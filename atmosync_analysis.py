# AtmoSync — Complete Data Integration, EDA and KPI Analysis
# Reproducible project code. Place the source workbook in this folder or update WORKBOOK_PATH.

from pathlib import Path
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

try:
    from IPython.display import display
except ImportError:
    display = print

# ---------------------------- Configuration ----------------------------
PROJECT_DIR = Path.cwd()
WORKBOOK_PATH = PROJECT_DIR / "AtmoSync_Data_Collection(1).xlsx"
OUTPUT_DIR = PROJECT_DIR / "outputs"
CHART_DIR = OUTPUT_DIR / "charts"
OUTPUT_DIR.mkdir(exist_ok=True)
CHART_DIR.mkdir(exist_ok=True)

# ---------------------------- 1. Load workbook -------------------------
xls = pd.ExcelFile(WORKBOOK_PATH)
print("Workbook sheets:", xls.sheet_names)

sensors = pd.read_excel(WORKBOOK_PATH, sheet_name="Sensor_Data")
prices = pd.read_excel(WORKBOOK_PATH, sheet_name="Market_Prices")
lots = pd.read_excel(WORKBOOK_PATH, sheet_name="Commodity_Data")
routes = pd.read_excel(WORKBOOK_PATH, sheet_name="Transport_Routes")
source_notes = pd.read_excel(WORKBOOK_PATH, sheet_name="Data_Sources")

# Preserve raw columns and create analysis-ready types/fields.
sensors["timestamp_local"] = pd.to_datetime(sensors["timestamp_local"], errors="coerce")
prices["price_date"] = pd.to_datetime(prices["price_date"], errors="coerce")
prices["price_inr_kg"] = prices["reported_price_inr_quintal"] / 100
prices = prices.sort_values("price_date").reset_index(drop=True)

print("Rows loaded:", {"sensor": len(sensors), "prices": len(prices),
                       "lots": len(lots), "routes": len(routes)})

# ---------------------------- 2. Data audit ---------------------------
sensor_missing_by_column = sensors.isna().sum().rename("missing_count").reset_index()
sensor_missing_by_column.columns = ["column", "missing_count"]
duplicate_sensor_keys = sensors.duplicated(
    subset=["container_id", "timestamp_local"], keep=False
)
audit = pd.DataFrame({
    "check": [
        "Sensor rows", "Distinct containers", "Rows per container (min)",
        "Rows per container (max)", "Missing sensor cells",
        "Duplicate container/timestamp keys", "Price rows",
        "Lot example rows", "Transport route rows"
    ],
    "result": [
        len(sensors), sensors["container_id"].nunique(),
        sensors.groupby("container_id").size().min(),
        sensors.groupby("container_id").size().max(),
        int(sensors.isna().sum().sum()),
        int(sensors.duplicated(["container_id", "timestamp_local"]).sum()),
        len(prices), len(lots), len(routes)
    ]
})
display(audit)
display(sensor_missing_by_column)
audit.to_csv(OUTPUT_DIR / "data_quality_audit.csv", index=False)

# Data status is sourced from workbook metadata: sensors are simulated;
# commodity lots are examples; transport cost/distance fields are unverified.
print("DATA STATUS: Sensor readings are simulated; commodity records are examples;")
print("transport distances/costs are not verified. Treat findings as demonstration analysis.")

# ---------------------------- 3. EDA ----------------------------------
display(sensors.head())
display(sensors.select_dtypes(include="number").describe().T)
display(prices.head())
display(prices.select_dtypes(include="number").describe().T)
display(lots)
display(routes)

# ---------------------------- 4. Sensor KPIs ---------------------------
sensor_kpis = sensors.groupby("container_id").agg(
    readings=("temperature_c", "size"),
    avg_temp_c=("temperature_c", "mean"),
    min_temp_c=("temperature_c", "min"),
    max_temp_c=("temperature_c", "max"),
    avg_humidity_pct=("relative_humidity_pct", "mean"),
    min_humidity_pct=("relative_humidity_pct", "min"),
    max_humidity_pct=("relative_humidity_pct", "max"),
    avg_vibration_g=("vibration_g", "mean"),
    min_vibration_g=("vibration_g", "min"),
    max_vibration_g=("vibration_g", "max")
).reset_index()

sensor_overall = sensors[[
    "temperature_c", "relative_humidity_pct", "vibration_g"
]].agg(["count", "mean", "min", "max"]).T
display(sensor_kpis.round(3))
display(sensor_overall.round(3))
sensor_kpis.to_csv(OUTPUT_DIR / "container_sensor_kpis.csv", index=False)
sensor_overall.to_csv(OUTPUT_DIR / "overall_sensor_kpis.csv")

# ---------------------------- 5. Market price KPIs ---------------------
price_kpis = {
    "record_count": int(prices["price_inr_kg"].count()),
    "min_price_inr_kg": float(prices["price_inr_kg"].min()),
    "max_price_inr_kg": float(prices["price_inr_kg"].max()),
    "mean_price_inr_kg": float(prices["price_inr_kg"].mean()),
    "median_price_inr_kg": float(prices["price_inr_kg"].median()),
}
price_kpis["observed_range_change_pct"] = (
    (price_kpis["max_price_inr_kg"] - price_kpis["min_price_inr_kg"])
    / price_kpis["min_price_inr_kg"] * 100
)
price_kpi_table = pd.DataFrame([price_kpis])
display(price_kpi_table.round(3))
price_kpi_table.to_csv(OUTPUT_DIR / "market_price_kpis.csv", index=False)

# Price dates may be sparse; this is a range across observations, not a continuous
# daily market trend or an India-wide price index.
prices[["price_date", "reported_price_inr_quintal", "price_inr_kg"]].to_csv(
    OUTPUT_DIR / "cleaned_market_prices.csv", index=False
)

# ---------------------------- 6. Commodity and route checks -----------
lot_quantity_total = lots["quantity"].sum()
print(f"Example lot quantity total: {lot_quantity_total:,.0f} kg (illustrative only)")
display(lots)
display(routes)
print("Transport cost/profitability calculation is not possible until actual route")
print("distance, refrigerated quotation, shipment and sale data are supplied.")

# ---------------------------- 7. Data integration decision ------------
# Do NOT merge sheets on guessed keys. Current sheets have different grains:
# sensor=container/time, price=market/date, lots=lot, routes=route.
# No verified foreign-key mapping is present in this workbook.
integration_note = pd.DataFrame([{
    "decision": "No row-level merge performed",
    "reason": "No verified common transaction/lot/container/shipment key",
    "recommended_future_keys": "lot_id, container_id, shipment_id, route_id, market_id"
}])
integration_note.to_csv(OUTPUT_DIR / "integration_decision.csv", index=False)
display(integration_note)

# ---------------------------- 8. Charts -------------------------------
def save_chart(filename):
    path = CHART_DIR / filename
    plt.tight_layout()
    plt.savefig(path, dpi=180, bbox_inches="tight")
    plt.show()
    plt.close()
    print("Saved:", path)

plt.figure(figsize=(9, 4.8))
plt.bar(sensor_kpis["container_id"], sensor_kpis["avg_temp_c"])
plt.title("Average Temperature by Container (Simulated)")
plt.xlabel("Container"); plt.ylabel("Average temperature (°C)")
plt.grid(axis="y", alpha=0.25)
save_chart("average_temperature_by_container.png")

plt.figure(figsize=(9, 4.8))
plt.bar(sensor_kpis["container_id"], sensor_kpis["avg_humidity_pct"])
plt.title("Average Relative Humidity by Container (Simulated)")
plt.xlabel("Container"); plt.ylabel("Average relative humidity (%)")
plt.grid(axis="y", alpha=0.25)
save_chart("average_humidity_by_container.png")

plt.figure(figsize=(9, 4.8))
for container, group in sensors.groupby("container_id"):
    series = group.set_index("timestamp_local")["temperature_c"].resample("6h").mean()
    plt.plot(series.index, series.values, marker="o", markersize=2, label=container)
plt.title("Temperature Trend by Container — 6-hour Mean (Simulated)")
plt.xlabel("Timestamp"); plt.ylabel("Temperature (°C)")
plt.legend(ncol=3); plt.grid(alpha=0.25)
save_chart("temperature_trend_6hour.png")

plt.figure(figsize=(9, 4.8))
plt.bar(sensor_kpis["container_id"], sensor_kpis["avg_vibration_g"])
plt.title("Average Vibration by Container (Simulated)")
plt.xlabel("Container"); plt.ylabel("Average vibration (g)")
plt.grid(axis="y", alpha=0.25)
save_chart("average_vibration_by_container.png")

plt.figure(figsize=(9, 4.8))
plt.plot(prices["price_date"], prices["price_inr_kg"], marker="o")
plt.title("Reported Avocado Price — Gaddiannaram APMC")
plt.xlabel("Reported date"); plt.ylabel("Reported price (₹/kg)")
plt.xticks(rotation=35, ha="right"); plt.grid(alpha=0.25)
save_chart("reported_market_price_trend.png")

# ---------------------------- 9. Findings and limitations -------------
highest_temp = sensor_kpis.loc[sensor_kpis["avg_temp_c"].idxmax()]
highest_humidity = sensor_kpis.loc[sensor_kpis["avg_humidity_pct"].idxmax()]
lowest_temp = sensor_kpis.loc[sensor_kpis["avg_temp_c"].idxmin()]
print(f"Highest mean simulated temperature: {highest_temp.container_id} "
      f"({highest_temp.avg_temp_c:.2f} °C)")
print(f"Highest mean simulated humidity: {highest_humidity.container_id} "
      f"({highest_humidity.avg_humidity_pct:.2f}%)")
print(f"Lowest mean simulated temperature: {lowest_temp.container_id} "
      f"({lowest_temp.avg_temp_c:.2f} °C)")
print(f"Observed market-price range: ₹{price_kpis['min_price_inr_kg']:.0f}–"
      f"₹{price_kpis['max_price_inr_kg']:.0f}/kg")
print("Pending: real sensor data and calibration; validated thresholds; actual lot/sale")
print("outcomes; expanded multi-market price series; verified route costs and distances.")
