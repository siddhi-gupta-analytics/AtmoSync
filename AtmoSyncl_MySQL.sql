
CREATE DATABASE IF NOT EXISTS atmosync;
USE atmosync;

DROP TABLE IF EXISTS Transport_Routes;
DROP TABLE IF EXISTS Market_Prices;
DROP TABLE IF EXISTS Commodity_Data;
DROP TABLE IF EXISTS Sensor_Data;


CREATE TABLE `Sensor_Data` (
  `container_id` VARCHAR(20),
  `timestamp_local` DATETIME,
  `temperature_c` DECIMAL(6,2),
  `relative_humidity_pct` DECIMAL(6,2),
  `vibration_g` DECIMAL(8,3),
  `data_status` VARCHAR(100)
);

INSERT INTO `Sensor_Data` (`container_id`, `timestamp_local`, `temperature_c`, `relative_humidity_pct`, `vibration_g`, `data_status`) VALUES
  ('C001', '2026-11-01 00:00:00', 5.11, 62.9, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 00:15:00', 5.33, 61.1, 0.12, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 00:30:00', 5.04, 64.4, 0.25, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 00:45:00', 4.7, 66.8, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 01:00:00', 5.02, 67.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 01:15:00', 4.7, 65.7, 0.15, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 01:30:00', 5.31, 64.9, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 01:45:00', 4.76, 67.4, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 02:00:00', 4.85, 64.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 02:15:00', 5.13, 65.8, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 02:30:00', 5.75, 64.2, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 02:45:00', 4.72, 66.2, 0.36, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 03:00:00', 4.96, 63.3, 0.17, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 03:15:00', 5.23, 66.5, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 03:30:00', 4.77, 65.5, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 03:45:00', 5.08, 66.7, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 04:00:00', 5.24, 65.1, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 04:15:00', 5.22, 62.1, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 04:30:00', 4.84, 63.7, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 04:45:00', 5.52, 63.3, 0.35, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 05:00:00', 4.41, 64.3, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 05:15:00', 5.21, 66.4, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 05:30:00', 4.88, 64.1, 0.34, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 05:45:00', 4.93, 62.4, 0.14, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 06:00:00', 4.68, 66, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 06:15:00', 5.24, 64.1, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 06:30:00', 5.22, 64.4, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 06:45:00', 4.77, 64.3, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 07:00:00', 4.58, 66, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 07:15:00', 5, 66, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 07:30:00', 5.23, 64.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 07:45:00', 4.97, 61.6, 0.11, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 08:00:00', 4.54, 63, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 08:15:00', 4.68, 64.2, 0.38, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 08:30:00', 4.88, 66.5, 0.16, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 08:45:00', 4.93, 63.1, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 09:00:00', 5.29, 61.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 09:15:00', 5.08, 63.8, 0.11, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 09:30:00', 5.03, 63.9, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 09:45:00', 5.01, 68.2, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 10:00:00', 4.64, 65.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 10:15:00', 5.48, 66.7, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 10:30:00', 5.51, 62.6, 0.19, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 10:45:00', 4.68, 64.2, 0.11, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 11:00:00', 5.22, 64.6, 0.1, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 11:15:00', 4.64, 65.6, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 11:30:00', 5.7, 70.8, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 11:45:00', 4.65, 60.7, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 12:00:00', 4.72, 64.2, 0.19, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 12:15:00', 4.95, 67.1, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 12:30:00', 4.94, 62.9, 0.08, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 12:45:00', 4.83, 64.9, 0.43, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 13:00:00', 5.05, 67, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 13:15:00', 4.59, 63.1, 0.18, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 13:30:00', 5.74, 63.4, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 13:45:00', 4.68, 66.9, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 14:00:00', 4.95, 64.9, 0.18, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 14:15:00', 5.16, 64.1, 0.13, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 14:30:00', 4.55, 65.3, 0.41, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 14:45:00', 5.06, 64.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 15:00:00', 5.46, 65.4, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 15:15:00', 5.39, 65.9, 0.4, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 15:30:00', 5.06, 62.6, 0.11, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 15:45:00', 5.58, 68.4, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 16:00:00', 4.87, 67.9, 0.14, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 16:15:00', 4.69, 66.3, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 16:30:00', 5, 64.7, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 16:45:00', 5.49, 65.2, 0.31, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 17:00:00', 4.28, 64.9, 0.17, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 17:15:00', 4.57, 63.2, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 17:30:00', 5.32, 62.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 17:45:00', 4.83, 64.3, 0.35, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 18:00:00', 5.19, 67.7, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 18:15:00', 4.76, 64.6, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 18:30:00', 5.06, 62.8, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 18:45:00', 5.08, 70, 0.44, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 19:00:00', 4.7, 64.4, 0.1, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 19:15:00', 4.79, 65.6, 0.37, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 19:30:00', 4.74, 63.7, 0.04, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 19:45:00', 4.94, 62.9, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 20:00:00', 4.69, 64.8, 0.07, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 20:15:00', 4.49, 69.3, 0.12, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 20:30:00', 4.62, 68.7, 0.54, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 20:45:00', 4.59, 64.3, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 21:00:00', 5.61, 63, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 21:15:00', 5.27, 65.9, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 21:30:00', 4.95, 62.3, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 21:45:00', 4.91, 65.5, 0.19, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 22:00:00', 5.17, 67, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 22:15:00', 5.12, 65.1, 0.25, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 22:30:00', 4.75, 65.6, 0.24, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 22:45:00', 5.73, 68.1, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 23:00:00', 4.73, 62.8, 0.37, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 23:15:00', 5.09, 66, 0.08, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 23:30:00', 5.32, 65.9, 0.14, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-01 23:45:00', 4.83, 65.5, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 00:00:00', 4.9, 64.8, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 00:15:00', 5.05, 67.9, 0.02, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 00:30:00', 4.92, 65.4, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 00:45:00', 4.87, 61.5, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 01:00:00', 5.6, 61.9, 0.34, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 01:15:00', 4.89, 64.9, 0.14, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 01:30:00', 4.88, 67.6, 0.31, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 01:45:00', 5.61, 67.4, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 02:00:00', 5.61, 65.9, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 02:15:00', 4.9, 65.1, 0.18, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 02:30:00', 5.35, 62.6, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 02:45:00', 4.93, 67.3, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 03:00:00', 5.64, 66.5, 0.09, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 03:15:00', 4.98, 62.7, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 03:30:00', 5.53, 66.3, 0.18, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 03:45:00', 4.65, 65.1, 0.13, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 04:00:00', 4.77, 65.6, 0.37, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 04:15:00', 5.21, 60.4, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 04:30:00', 5.03, 65.8, 0.41, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 04:45:00', 4.28, 63.8, 0.31, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 05:00:00', 4.45, 68, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 05:15:00', 5.3, 63.9, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 05:30:00', 5.37, 65.5, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 05:45:00', 5.09, 63.3, 0.24, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 06:00:00', 4.95, 65.8, 0.35, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 06:15:00', 4.63, 64.7, 0.4, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 06:30:00', 4.74, 63.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 06:45:00', 5.3, 65, 0.38, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 07:00:00', 5.3, 66.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 07:15:00', 5.81, 64.6, 0.05, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 07:30:00', 5.56, 64.1, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 07:45:00', 5.46, 61.8, 0.12, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 08:00:00', 4.44, 63.4, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 08:15:00', 5.18, 65.6, 0.11, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 08:30:00', 4.19, 65.1, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 08:45:00', 5.16, 66.4, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 09:00:00', 5.27, 65.5, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 09:15:00', 4.75, 64.6, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 09:30:00', 5.29, 64.2, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 09:45:00', 4.91, 64.8, 0.33, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 10:00:00', 4.3, 62.4, 0.1, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 10:15:00', 4.18, 63.6, 0.32, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 10:30:00', 4.9, 65.4, 0.36, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 10:45:00', 5.46, 64.9, 0.39, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 11:00:00', 5.03, 63.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 11:15:00', 4.48, 63.2, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 11:30:00', 5.28, 68.4, 0.11, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 11:45:00', 5.14, 62.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 12:00:00', 4.95, 61.3, 0.34, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 12:15:00', 4.79, 63.9, 0.14, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 12:30:00', 4.77, 65.9, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 12:45:00', 5.12, 65.7, 0.38, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 13:00:00', 4.88, 62, 0.36, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 13:15:00', 4.88, 67.2, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 13:30:00', 4.95, 65.7, 0.45, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 13:45:00', 5.73, 65.1, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 14:00:00', 5.38, 63.3, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 14:15:00', 4.99, 65.6, 0.17, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 14:30:00', 4.44, 60.9, 0.14, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 14:45:00', 4.84, 64.4, 0.44, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 15:00:00', 5.39, 63.1, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 15:15:00', 4.86, 64.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 15:30:00', 5.22, 64.3, 0.36, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 15:45:00', 4.6, 65, 0.51, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 16:00:00', 5.08, 67.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 16:15:00', 5.2, 64.9, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 16:30:00', 4.73, 65.9, 0.16, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 16:45:00', 5.23, 67.2, 0.29, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 17:00:00', 4.9, 65.9, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 17:15:00', 5.33, 61.3, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 17:30:00', 4.3, 62, 0.39, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 17:45:00', 5.31, 63.6, 0.1, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 18:00:00', 3.96, 63.9, 0.49, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 18:15:00', 5.15, 63.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 18:30:00', 4.45, 64.4, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 18:45:00', 4.97, 66.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 19:00:00', 5.23, 63.6, 0.34, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 19:15:00', 5.57, 63.1, 0.16, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 19:30:00', 5.47, 64.6, 0.39, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 19:45:00', 4.85, 67.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 20:00:00', 5.09, 68.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 20:15:00', 4.67, 64.1, 0.3, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 20:30:00', 4.45, 66.3, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 20:45:00', 5.4, 60.2, 0.17, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 21:00:00', 4.41, 63.3, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 21:15:00', 4.94, 64.5, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 21:30:00', 5.07, 63, 0.32, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 21:45:00', 5.23, 65.8, 0.31, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 22:00:00', 5.1, 69.1, 0.24, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 22:15:00', 4.89, 63.5, 0.15, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 22:30:00', 4.56, 63.2, 0.24, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 22:45:00', 5.12, 65.1, 0.17, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 23:00:00', 5.32, 66.5, 0.23, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 23:15:00', 4.77, 66.1, 0.27, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 23:30:00', 4.49, 64.9, 0.28, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-02 23:45:00', 4.69, 65.4, 0.1, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 00:00:00', 5.47, 67.5, 0.22, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 00:15:00', 5.13, 60.2, 0.13, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 00:30:00', 4.9, 62.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 00:45:00', 5.7, 62.6, 0.17, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 01:00:00', 5.08, 68.2, 0.13, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 01:15:00', 5.09, 68.6, 0.08, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 01:30:00', 4.55, 64.2, 0.2, 'SIMULATED - not physical sensor data'),
  ('C001', '2026-11-03 01:45:00', 5.28, 65.5, 0.07, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 00:00:00', 6.18, 66.8, 0.38, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 00:15:00', 5.78, 66.7, 0.3, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 00:30:00', 6.27, 68.9, 0.08, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 00:45:00', 6.19, 65.9, 0.27, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 01:00:00', 5.5, 68.9, 0.17, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 01:15:00', 5.55, 69.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 01:30:00', 5.79, 70.9, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 01:45:00', 6.01, 68.5, 0.19, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 02:00:00', 6.16, 66.9, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 02:15:00', 6.48, 65.9, 0.02, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 02:30:00', 6.56, 73.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 02:45:00', 5.32, 67.4, 0.22, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 03:00:00', 5.93, 65.8, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 03:15:00', 6.18, 65, 0.32, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 03:30:00', 6.72, 68.3, 0.22, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 03:45:00', 5.95, 69.2, 0.08, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 04:00:00', 6.06, 67.2, 0.43, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 04:15:00', 5.94, 71.3, 0.14, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 04:30:00', 6.21, 68.6, 0.16, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 04:45:00', 6.06, 70.4, 0.22, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 05:00:00', 5.41, 68, 0.16, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 05:15:00', 5.88, 67.8, 0.08, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 05:30:00', 5.43, 69, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 05:45:00', 5.1, 69.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 06:00:00', 5.75, 65.4, 0.33, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 06:15:00', 6.12, 72.8, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 06:30:00', 6.14, 67.7, 0.33, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 06:45:00', 6.22, 70.5, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 07:00:00', 5.85, 67, 0.33, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 07:15:00', 6.52, 67.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 07:30:00', 6.11, 67.5, 0.35, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 07:45:00', 5.21, 66.3, 0.17, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 08:00:00', 5.19, 66.1, 0.16, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 08:15:00', 5.93, 70.2, 0.23, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 08:30:00', 5.64, 67.9, 0.35, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 08:45:00', 5.66, 66.2, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 09:00:00', 5.92, 69.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 09:15:00', 6.25, 65.9, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 09:30:00', 5.93, 65.6, 0.09, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 09:45:00', 6.24, 67.3, 0.15, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 10:00:00', 5.97, 70.3, 0.02, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 10:15:00', 5.48, 66.2, 0.4, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 10:30:00', 6.1, 69.5, 0.14, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 10:45:00', 5.61, 68.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 11:00:00', 6.19, 67.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 11:15:00', 6.06, 69.6, 0.33, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 11:30:00', 5.43, 63.5, 0.35, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 11:45:00', 6.42, 66, 0.06, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 12:00:00', 6.03, 69.9, 0.43, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 12:15:00', 6.18, 67.3, 0.16, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 12:30:00', 6, 67.4, 0.15, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 12:45:00', 6.72, 71.6, 0.36, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 13:00:00', 5.68, 69.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 13:15:00', 6.15, 70.5, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 13:30:00', 6.26, 69.3, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 13:45:00', 5.38, 68.2, 0.19, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 14:00:00', 5.55, 71.4, 0.42, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 14:15:00', 6.48, 68.5, 0.39, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 14:30:00', 6, 68.4, 0.14, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 14:45:00', 6.14, 68.1, 0.12, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 15:00:00', 5.98, 67.8, 0.43, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 15:15:00', 6.31, 68, 0.27, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 15:30:00', 6.02, 67.6, 0.14, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 15:45:00', 5.95, 66.5, 0.12, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 16:00:00', 6.18, 68.8, 0.07, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 16:15:00', 5.96, 70, 0.36, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 16:30:00', 6.36, 68.1, 0.17, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 16:45:00', 5.62, 68.7, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 17:00:00', 6.45, 70.2, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 17:15:00', 5.56, 67.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 17:30:00', 5.93, 66.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 17:45:00', 5.82, 66.7, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 18:00:00', 5.86, 68.5, 0.53, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 18:15:00', 5.6, 67, 0.64, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 18:30:00', 5.59, 63.8, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 18:45:00', 6.01, 68.1, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 19:00:00', 6.42, 62.7, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 19:15:00', 6.55, 65.7, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 19:30:00', 5.74, 66.2, 0.22, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 19:45:00', 6.5, 71.7, 0.22, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 20:00:00', 6.67, 68.1, 0.43, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 20:15:00', 5.97, 68.3, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 20:30:00', 7.11, 69.7, 0.18, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 20:45:00', 6.34, 67.3, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 21:00:00', 6.32, 68.1, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 21:15:00', 6, 68.7, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 21:30:00', 5.32, 69.3, 0.15, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 21:45:00', 5.5, 67.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 22:00:00', 5.76, 69.7, 0.12, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 22:15:00', 5.86, 66.8, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 22:30:00', 6.1, 66, 0.32, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 22:45:00', 6.02, 64.2, 0.05, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 23:00:00', 6, 67.6, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 23:15:00', 5.99, 68.5, 0.34, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 23:30:00', 5.61, 65.7, 0.14, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-01 23:45:00', 6.1, 70.5, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 00:00:00', 5.12, 64.6, 0.17, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 00:15:00', 5.8, 67.2, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 00:30:00', 5.89, 70.1, 0.18, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 00:45:00', 5.7, 69, 0.1, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 01:00:00', 6.14, 68.2, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 01:15:00', 6.56, 66.8, 0.46, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 01:30:00', 5.92, 65.4, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 01:45:00', 5.62, 66.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 02:00:00', 6.19, 66.8, 0.35, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 02:15:00', 6.41, 70.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 02:30:00', 6.48, 64.2, 0.22, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 02:45:00', 5.7, 68.2, 0.19, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 03:00:00', 5.94, 71.8, 0.23, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 03:15:00', 6.14, 67.5, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 03:30:00', 6, 68.9, 0.37, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 03:45:00', 6.58, 68.6, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 04:00:00', 5.6, 67.8, 0.34, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 04:15:00', 6.3, 68.4, 0.34, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 04:30:00', 6.17, 70.4, 0.28, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 04:45:00', 5.88, 68.7, 0.02, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 05:00:00', 6.13, 60.7, 0.08, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 05:15:00', 6.16, 69, 0.13, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 05:30:00', 5.75, 70.7, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 05:45:00', 6.79, 68, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 06:00:00', 6.57, 68.3, 0.15, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 06:15:00', 5.96, 67.9, 0.11, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 06:30:00', 5.91, 66.5, 0.34, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 06:45:00', 6.01, 67.4, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 07:00:00', 6.08, 69.2, 0.15, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 07:15:00', 5.64, 70.2, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 07:30:00', 5.5, 68.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 07:45:00', 5.46, 68.5, 0.32, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 08:00:00', 6.13, 69.3, 0.11, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 08:15:00', 6.12, 67.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 08:30:00', 6.3, 71, 0.43, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 08:45:00', 6.46, 67.8, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 09:00:00', 6.27, 68.2, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 09:15:00', 6.29, 67.9, 0.18, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 09:30:00', 5.85, 69.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 09:45:00', 6.12, 69.3, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 10:00:00', 6.26, 68.8, 0.13, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 10:15:00', 6.5, 67, 0.08, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 10:30:00', 5.63, 66, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 10:45:00', 5.9, 67.3, 0.31, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 11:00:00', 6.12, 68.6, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 11:15:00', 6.22, 63.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 11:30:00', 5.24, 68.1, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 11:45:00', 6.37, 70.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 12:00:00', 5.82, 69, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 12:15:00', 6, 70, 0.19, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 12:30:00', 6.28, 69.4, 0.15, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 12:45:00', 6.34, 69.4, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 13:00:00', 5.73, 66.3, 0.2, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 13:15:00', 6.19, 66.1, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 13:30:00', 5.57, 67.6, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 13:45:00', 6.86, 65.2, 0.4, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 14:00:00', 6.05, 68.8, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 14:15:00', 6.16, 67.7, 0.4, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 14:30:00', 5.84, 70.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 14:45:00', 5.98, 65.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 15:00:00', 6.51, 67.8, 0.23, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 15:15:00', 5.61, 67.5, 0.09, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 15:30:00', 5.68, 68.5, 0.38, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 15:45:00', 6.98, 66.8, 0.39, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 16:00:00', 6.09, 67.7, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 16:15:00', 6.02, 68.2, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 16:30:00', 5.51, 64.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 16:45:00', 5.9, 66.8, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 17:00:00', 6.28, 68.4, 0.18, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 17:15:00', 6.43, 71.2, 0.3, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 17:30:00', 6.34, 70.5, 0.36, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 17:45:00', 6.21, 69.2, 0.3, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 18:00:00', 5.62, 69.4, 0.11, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 18:15:00', 5.72, 70.6, 0.33, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 18:30:00', 6.52, 67.5, 0.13, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 18:45:00', 5.92, 68.2, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 19:00:00', 6.4, 67.3, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 19:15:00', 5.65, 68.9, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 19:30:00', 5.74, 67.5, 0.23, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 19:45:00', 5.91, 71.5, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 20:00:00', 5.91, 63.8, 0.16, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 20:15:00', 5.91, 66.6, 0.39, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 20:30:00', 5.94, 70.6, 0.26, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 20:45:00', 6.01, 67.8, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 21:00:00', 6.6, 63.4, 0.05, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 21:15:00', 5.81, 68, 0.32, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 21:30:00', 6.17, 67.2, 0.35, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 21:45:00', 6.36, 68.4, 0.35, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 22:00:00', 6.1, 66.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 22:15:00', 6.04, 68, 0.4, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 22:30:00', 5.14, 65.2, 0.13, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 22:45:00', 5.87, 67.5, 0.1, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 23:00:00', 5.66, 66.3, 0.5, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 23:15:00', 6.63, 67.2, 0.21, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 23:30:00', 5.6, 64.2, 0.24, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-02 23:45:00', 5.65, 67.8, 0.09, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 00:00:00', 5.73, 68.3, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 00:15:00', 6.15, 65.4, 0.34, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 00:30:00', 5.72, 69.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 00:45:00', 5.52, 67.4, 0.29, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 01:00:00', 6.21, 67.7, 0.4, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 01:15:00', 6.35, 67.5, 0.33, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 01:30:00', 6.68, 71.9, 0.13, 'SIMULATED - not physical sensor data'),
  ('C002', '2026-11-03 01:45:00', 5.68, 71, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 00:00:00', 6.54, 71, 0.29, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 00:15:00', 6.96, 70.7, 0.18, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 00:30:00', 6.75, 70.2, 0.48, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 00:45:00', 7.1, 73.8, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 01:00:00', 6.93, 70.6, 0.02, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 01:15:00', 6.52, 68.4, 0.03, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 01:30:00', 6.58, 74.6, 0.25, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 01:45:00', 7.45, 72.8, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 02:00:00', 6.68, 73, 0.32, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 02:15:00', 6.8, 73.1, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 02:30:00', 6.81, 69.8, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 02:45:00', 7.03, 72.7, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 03:00:00', 7.01, 73.1, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 03:15:00', 7.54, 74.6, 0.15, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 03:30:00', 7.59, 70.9, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 03:45:00', 7.02, 71.2, 0.07, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 04:00:00', 6.94, 68.9, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 04:15:00', 7.53, 70.4, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 04:30:00', 6.75, 70.7, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 04:45:00', 6.99, 75.5, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 05:00:00', 7.35, 72.2, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 05:15:00', 6.84, 71.9, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 05:30:00', 6.71, 73.3, 0.32, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 05:45:00', 7.21, 75.1, 0.39, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 06:00:00', 6.87, 72.7, 0.19, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 06:15:00', 7.01, 70.8, 0.41, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 06:30:00', 7.13, 71.6, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 06:45:00', 6.24, 68, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 07:00:00', 7.02, 72.5, 0.12, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 07:15:00', 6.99, 76, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 07:30:00', 7.06, 71.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 07:45:00', 6.25, 72.5, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 08:00:00', 6.45, 70.7, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 08:15:00', 6.66, 72.1, 0.04, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 08:30:00', 7.21, 73.5, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 08:45:00', 6.13, 70, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 09:00:00', 6.03, 71.3, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 09:15:00', 7.28, 70.6, 0.29, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 09:30:00', 7.2, 75.7, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 09:45:00', 7.13, 69, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 10:00:00', 6.73, 70.9, 0.25, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 10:15:00', 6.45, 72.5, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 10:30:00', 7.1, 68.8, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 10:45:00', 7.26, 68.2, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 11:00:00', 7.31, 72.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 11:15:00', 7.65, 72.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 11:30:00', 7.95, 71.6, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 11:45:00', 7.15, 72.9, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 12:00:00', 6.64, 76.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 12:15:00', 6.74, 73.8, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 12:30:00', 6.91, 73.1, 0.12, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 12:45:00', 7.12, 75.8, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 13:00:00', 6.87, 71, 0.21, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 13:15:00', 6.91, 71.2, 0.34, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 13:30:00', 6.39, 73.7, 0.21, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 13:45:00', 7.13, 69.7, 0.38, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 14:00:00', 7.44, 73.9, 0.1, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 14:15:00', 7.29, 72.8, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 14:30:00', 6.99, 72.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 14:45:00', 7.06, 72.6, 0.4, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 15:00:00', 7.43, 66.3, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 15:15:00', 6.94, 68.5, 0.26, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 15:30:00', 7.44, 69.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 15:45:00', 6.68, 70.7, 0.4, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 16:00:00', 6.81, 72.9, 0.06, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 16:15:00', 7.65, 73.2, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 16:30:00', 7.2, 69.2, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 16:45:00', 6.89, 71.6, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 17:00:00', 6.8, 73.4, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 17:15:00', 7.23, 72, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 17:30:00', 6.85, 76.5, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 17:45:00', 7.44, 74.7, 0.16, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 18:00:00', 7.78, 74, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 18:15:00', 7.01, 71.6, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 18:30:00', 7.14, 74.8, 0.27, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 18:45:00', 6.68, 73.6, 0.34, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 19:00:00', 7.23, 73.5, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 19:15:00', 6.67, 70.3, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 19:30:00', 7.08, 71.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 19:45:00', 5.97, 69.5, 0.36, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 20:00:00', 6.77, 72.7, 0.11, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 20:15:00', 7.5, 71.7, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 20:30:00', 7.81, 75, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 20:45:00', 6.79, 71.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 21:00:00', 6.96, 71.2, 0.4, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 21:15:00', 6.96, 76.6, 0.26, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 21:30:00', 7.62, 72.7, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 21:45:00', 6.75, 70.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 22:00:00', 7.35, 72.1, 0.12, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 22:15:00', 6.52, 69.1, 0.07, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 22:30:00', 7.04, 74.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 22:45:00', 6.21, 71.6, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 23:00:00', 7.73, 69.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 23:15:00', 7.6, 72.9, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 23:30:00', 7.04, 72.7, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-01 23:45:00', 6.72, 73.8, 0.11, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 00:00:00', 7.11, 72.4, 0.19, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 00:15:00', 6.99, 70.8, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 00:30:00', 6.88, 69.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 00:45:00', 6.6, 73.4, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 01:00:00', 6.8, 70.8, 0.38, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 01:15:00', 7.15, 71.6, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 01:30:00', 6.33, 72.1, 0.45, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 01:45:00', 7.15, 72.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 02:00:00', 7.45, 68.3, 0.08, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 02:15:00', 7.25, 70.9, 0.38, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 02:30:00', 7.1, 68.6, 0.12, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 02:45:00', 6.28, 72, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 03:00:00', 7.13, 74.7, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 03:15:00', 7.26, 68.4, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 03:30:00', 7.54, 73.3, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 03:45:00', 6.98, 76.8, 0.15, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 04:00:00', 7.68, 69.5, 0.16, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 04:15:00', 7.99, 72.4, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 04:30:00', 7.57, 72.8, 0.39, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 04:45:00', 7.44, 69.5, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 05:00:00', 7.75, 73.9, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 05:15:00', 7.34, 72, 0.21, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 05:30:00', 7.15, 72, 0.18, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 05:45:00', 7.94, 74.9, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 06:00:00', 7.56, 73.7, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 06:15:00', 7.33, 71.6, 0.19, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 06:30:00', 7.36, 73.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 06:45:00', 7.25, 73.7, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 07:00:00', 7.96, 73.7, 0.1, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 07:15:00', 7.43, 73.8, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 07:30:00', 7.14, 74.5, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 07:45:00', 7.89, 75, 0.18, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 08:00:00', 7.94, 70.7, 0.02, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 08:15:00', 8.34, 72.1, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 08:30:00', 7.56, 71.3, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 08:45:00', 7.83, 74.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 09:00:00', 8.23, 74.7, 0.41, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 09:15:00', 7.78, 74.2, 0.36, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 09:30:00', 8.63, 71.5, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 09:45:00', 8.7, 75.5, 0.27, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 10:00:00', 8.18, 73.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 10:15:00', 8.21, 74.5, 0.26, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 10:30:00', 8.09, 75.7, 0.54, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 10:45:00', 7.74, 75.4, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 11:00:00', 8.6, 74.9, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 11:15:00', 8.85, 75.3, 0.36, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 11:30:00', 7.65, 78.1, 0.29, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 11:45:00', 8.88, 72.6, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 12:00:00', 8.59, 75, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 12:15:00', 8.95, 71.6, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 12:30:00', 8.61, 74.8, 0.1, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 12:45:00', 8.82, 70.5, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 13:00:00', 8.16, 75.5, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 13:15:00', 9.12, 75.1, 0.18, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 13:30:00', 8.57, 78, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 13:45:00', 8.65, 75.1, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 14:00:00', 8.96, 72.1, 0.33, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 14:15:00', 8.9, 80.5, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 14:30:00', 8.85, 79.4, 0.37, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 14:45:00', 8.68, 76.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 15:00:00', 9.06, 74.5, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 15:15:00', 8.44, 76.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 15:30:00', 8.95, 72.8, 0.35, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 15:45:00', 9.19, 74.7, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 16:00:00', 8.57, 74.1, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 16:15:00', 9.56, 75, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 16:30:00', 8.98, 76.8, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 16:45:00', 9.51, 75.3, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 17:00:00', 8.76, 75.4, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 17:15:00', 9.42, 75.6, 0.49, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 17:30:00', 8.7, 77, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 17:45:00', 9.17, 77, 0.02, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 18:00:00', 9.46, 80.6, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 18:15:00', 9.51, 78.9, 0.23, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 18:30:00', 9.25, 72.3, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 18:45:00', 9.45, 74.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 19:00:00', 9.32, 76, 0.31, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 19:15:00', 9.09, 79.2, 0.11, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 19:30:00', 9.36, 81, 0.36, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 19:45:00', 9.66, 75.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 20:00:00', 9.69, 77.4, 0.24, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 20:15:00', 9.68, 77, 0.11, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 20:30:00', 9.55, 79.3, 0.11, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 20:45:00', 9.7, 75.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 21:00:00', 9.66, 80.6, 0.3, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 21:15:00', 9.38, 79, 0.17, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 21:30:00', 9.67, 78.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 21:45:00', 10.22, 76.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 22:00:00', 9.71, 76.7, 0.36, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 22:15:00', 10.2, 81.4, 0.48, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 22:30:00', 9.65, 78.2, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 22:45:00', 9.77, 76.8, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 23:00:00', 9.71, 77.9, 0.13, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 23:15:00', 10.41, 76.4, 0.53, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 23:30:00', 9.99, 78.4, 0.12, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-02 23:45:00', 10.78, 80.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 00:00:00', 9.75, 78.9, 0.14, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 00:15:00', 10.77, 80.1, 0.26, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 00:30:00', 9.44, 76.6, 0.32, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 00:45:00', 10.75, 80.9, 0.09, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 01:00:00', 10.47, 80.8, 0.08, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 01:15:00', 10.39, 79.3, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 01:30:00', 9.78, 78.2, 0.22, 'SIMULATED - not physical sensor data'),
  ('C003', '2026-11-03 01:45:00', 10.41, 77.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 00:00:00', 5.49, 66.9, 0.22, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 00:15:00', 5.36, 66.2, 0.06, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 00:30:00', 5.67, 66, 0.25, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 00:45:00', 5.84, 62.1, 0.05, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 01:00:00', 5.6, 66, 0.27, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 01:15:00', 5.34, 67.3, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 01:30:00', 5.67, 65.5, 0.04, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 01:45:00', 5.77, 68.4, 0.31, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 02:00:00', 5.19, 67.3, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 02:15:00', 6.05, 64.2, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 02:30:00', 5.76, 66.1, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 02:45:00', 5.65, 67.2, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 03:00:00', 5.58, 65.5, 0.4, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 03:15:00', 5.18, 64.8, 0.25, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 03:30:00', 5.81, 63, 0.12, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 03:45:00', 4.79, 66.1, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 04:00:00', 5.37, 67.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 04:15:00', 5.58, 65.4, 0.32, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 04:30:00', 5.67, 64.6, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 04:45:00', 5.87, 66.8, 0.11, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 05:00:00', 5.73, 63.8, 0.39, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 05:15:00', 5.86, 66.6, 0.27, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 05:30:00', 5.43, 67.4, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 05:45:00', 5.58, 67.7, 0.19, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 06:00:00', 5.28, 63.6, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 06:15:00', 4.86, 67.5, 0.43, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 06:30:00', 6, 62.7, 0.32, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 06:45:00', 6, 65.1, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 07:00:00', 4.8, 66.5, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 07:15:00', 5.57, 62.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 07:30:00', 5.86, 64.4, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 07:45:00', 4.75, 65.5, 0.19, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 08:00:00', 4.96, 66.9, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 08:15:00', 5.12, 64.9, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 08:30:00', 5.71, 65.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 08:45:00', 5.09, 66.1, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 09:00:00', 5.34, 66.9, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 09:15:00', 5.68, 67.1, 0.02, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 09:30:00', 5.92, 59.9, 0.19, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 09:45:00', 5.86, 65.4, 0.1, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 10:00:00', 5.12, 68.1, 0.06, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 10:15:00', 5.9, 65.9, 0.13, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 10:30:00', 5.3, 64, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 10:45:00', 5.76, 62.6, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 11:00:00', 5.2, 68.6, 0.11, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 11:15:00', 6.06, 65.9, 0.13, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 11:30:00', 5.26, 64.4, 0.12, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 11:45:00', 5.53, 63.5, 0.03, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 12:00:00', 5.37, 62.4, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 12:15:00', 5.18, 64.3, 0.45, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 12:30:00', 5.52, 66.5, 0.07, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 12:45:00', 5.27, 66.4, 0.15, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 13:00:00', 5.82, 63.6, 0.22, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 13:15:00', 5.29, 66.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 13:30:00', 5.41, 65.5, 0.18, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 13:45:00', 5.67, 66.5, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 14:00:00', 5.35, 67.6, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 14:15:00', 5.39, 66.2, 0.42, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 14:30:00', 5.03, 67.5, 0.06, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 14:45:00', 5.58, 69.2, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 15:00:00', 5.56, 64.9, 0.25, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 15:15:00', 5.41, 64.4, 0.22, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 15:30:00', 5.57, 64.5, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 15:45:00', 5.02, 66.8, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 16:00:00', 5.58, 67.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 16:15:00', 5.64, 66.6, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 16:30:00', 5.31, 70.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 16:45:00', 5.27, 66.9, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 17:00:00', 5.01, 68.2, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 17:15:00', 5.11, 68.4, 0.31, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 17:30:00', 5.06, 69.6, 0.32, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 17:45:00', 5.5, 69.2, 0.27, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 18:00:00', 5.49, 64.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 18:15:00', 5.67, 66, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 18:30:00', 5.55, 65.9, 0.12, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 18:45:00', 4.98, 67.1, 0.02, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 19:00:00', 5.57, 65, 0.38, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 19:15:00', 5.33, 67.3, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 19:30:00', 5.54, 67.5, 0.2, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 19:45:00', 5.85, 64, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 20:00:00', 5.82, 67.3, 0.44, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 20:15:00', 5.23, 63.2, 0.15, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 20:30:00', 5.73, 67, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 20:45:00', 5.11, 67.5, 0.13, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 21:00:00', 5.91, 71.7, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 21:15:00', 5.7, 65, 0.07, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 21:30:00', 5.29, 63.8, 0.11, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 21:45:00', 6.1, 66.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 22:00:00', 5.39, 65.7, 0.35, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 22:15:00', 5.49, 67.1, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 22:30:00', 5.38, 63.2, 0.05, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 22:45:00', 5.41, 66.1, 0.12, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 23:00:00', 5.49, 66.1, 0.03, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 23:15:00', 5.18, 66.8, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 23:30:00', 5.1, 66.3, 0.35, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-01 23:45:00', 5.77, 65.8, 0.2, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 00:00:00', 5.28, 66.9, 0.27, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 00:15:00', 5.72, 66.3, 0.33, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 00:30:00', 5.53, 67.6, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 00:45:00', 5.22, 62.4, 0.4, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 01:00:00', 5.59, 62.6, 0.18, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 01:15:00', 5.77, 65.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 01:30:00', 5.99, 63.9, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 01:45:00', 5.57, 66.8, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 02:00:00', 5.82, 66.4, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 02:15:00', 5.41, 66.1, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 02:30:00', 5.58, 67.5, 0.31, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 02:45:00', 5.52, 64.4, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 03:00:00', 5.49, 66.4, 0.47, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 03:15:00', 5.32, 66.8, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 03:30:00', 5.53, 70.7, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 03:45:00', 5.61, 64.4, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 04:00:00', 5.59, 67.7, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 04:15:00', 5.94, 65.8, 0.22, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 04:30:00', 6.45, 66.8, 0.18, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 04:45:00', 5.26, 64.1, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 05:00:00', 5.37, 66.3, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 05:15:00', 5.76, 64.3, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 05:30:00', 5.58, 67.2, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 05:45:00', 5.22, 67.4, 0.18, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 06:00:00', 5.32, 64.1, 0.38, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 06:15:00', 5.72, 67.2, 0.37, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 06:30:00', 6.48, 62.6, 0.18, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 06:45:00', 5.28, 64.3, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 07:00:00', 5.4, 63.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 07:15:00', 5.52, 67, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 07:30:00', 5.71, 65.3, 0.46, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 07:45:00', 5.58, 62.3, 0.15, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 08:00:00', 4.89, 66, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 08:15:00', 5.34, 70, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 08:30:00', 5.75, 64.1, 0.15, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 08:45:00', 5.51, 66.3, 0.06, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 09:00:00', 5.44, 66, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 09:15:00', 5.22, 64.9, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 09:30:00', 5.53, 67.2, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 09:45:00', 5.4, 65.1, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 10:00:00', 5.71, 65.1, 0.33, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 10:15:00', 5.84, 68.6, 0.43, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 10:30:00', 5.2, 66, 0.25, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 10:45:00', 5.47, 64.7, 0.1, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 11:00:00', 5.53, 64.5, 0.26, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 11:15:00', 5.22, 63.8, 0.27, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 11:30:00', 5.55, 67.2, 0.47, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 11:45:00', 5.6, 67, 0.14, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 12:00:00', 5.05, 69.2, 0.16, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 12:15:00', 5.13, 65.9, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 12:30:00', 5.18, 65.4, 0.37, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 12:45:00', 5.22, 63.2, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 13:00:00', 5.67, 64.8, 0.09, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 13:15:00', 5.24, 65.9, 0.37, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 13:30:00', 5.14, 65.8, 0.32, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 13:45:00', 4.67, 68.1, 0.13, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 14:00:00', 5.62, 66.5, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 14:15:00', 5.69, 61.2, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 14:30:00', 5.55, 65.6, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 14:45:00', 5.78, 67.2, 0.23, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 15:00:00', 4.85, 65.1, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 15:15:00', 5.12, 67.3, 0.34, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 15:30:00', 5.54, 59.9, 0.12, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 15:45:00', 6.16, 64.9, 0.05, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 16:00:00', 5.93, 66, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 16:15:00', 5.6, 66.9, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 16:30:00', 5.74, 70.6, 0.35, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 16:45:00', 4.95, 66.9, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 17:00:00', 5.92, 65.1, 0.37, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 17:15:00', 5.82, 71.1, 0.17, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 17:30:00', 5.32, 65.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 17:45:00', 5.19, 60.5, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 18:00:00', 5.63, 65, 0.44, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 18:15:00', 5.5, 68.6, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 18:30:00', 5.79, 66.6, 0.39, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 18:45:00', 5.52, 67, 0.29, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 19:00:00', 5.4, 66.8, 0.47, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 19:15:00', 5.41, 66.8, 0.38, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 19:30:00', 5.9, 66, 0.02, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 19:45:00', 5.68, 61.6, 0.4, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 20:00:00', 5.56, 68, 0.16, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 20:15:00', 4.96, 66.5, 0.25, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 20:30:00', 5.33, 66.2, 0.53, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 20:45:00', 5.79, 68.1, 0.33, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 21:00:00', 6.02, 65.6, 0.04, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 21:15:00', 5.43, 67.6, 0.15, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 21:30:00', 5.44, 64.6, 0.4, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 21:45:00', 5.76, 67.3, 0.31, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 22:00:00', 5.49, 66.4, 0.13, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 22:15:00', 4.73, 66.3, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 22:30:00', 5.92, 69.1, 0.41, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 22:45:00', 5.15, 65.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 23:00:00', 6.39, 69, 0.36, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 23:15:00', 5.36, 64.2, 0.33, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 23:30:00', 5.11, 65.5, 0.24, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-02 23:45:00', 6.06, 65.3, 0.02, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 00:00:00', 5.68, 64.6, 0.25, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 00:15:00', 5.47, 65.5, 0.33, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 00:30:00', 4.96, 65, 0.32, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 00:45:00', 5.29, 62.8, 0.32, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 01:00:00', 5.89, 65.9, 0.05, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 01:15:00', 5.75, 62.7, 0.28, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 01:30:00', 5.19, 63.7, 0.21, 'SIMULATED - not physical sensor data'),
  ('C004', '2026-11-03 01:45:00', 5.44, 64.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 00:00:00', 7.84, 77, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 00:15:00', 7.76, 73.3, 0.09, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 00:30:00', 8.1, 74.3, 0.02, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 00:45:00', 7.81, 73.2, 0.41, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 01:00:00', 7.4, 72.1, 0.36, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 01:15:00', 8.47, 73.5, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 01:30:00', 8.22, 70.3, 0.06, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 01:45:00', 7.9, 78.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 02:00:00', 8.04, 77.3, 0.46, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 02:15:00', 7.8, 75, 0.43, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 02:30:00', 7.47, 77.1, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 02:45:00', 8.04, 74.5, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 03:00:00', 7.66, 75.6, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 03:15:00', 7.95, 75.1, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 03:30:00', 7.66, 76.5, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 03:45:00', 8.91, 74.2, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 04:00:00', 8.27, 76.6, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 04:15:00', 7.86, 76.1, 0.17, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 04:30:00', 7.86, 75.2, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 04:45:00', 7.79, 71.3, 0.06, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 05:00:00', 7.56, 72.4, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 05:15:00', 7.58, 73.6, 0.17, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 05:30:00', 7.85, 77.6, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 05:45:00', 8.01, 74.1, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 06:00:00', 8.11, 76.2, 0.16, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 06:15:00', 8.01, 70.9, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 06:30:00', 8.27, 74.4, 0.43, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 06:45:00', 7.69, 75.4, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 07:00:00', 7.96, 74.8, 0.26, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 07:15:00', 8.3, 77.8, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 07:30:00', 8.29, 73.6, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 07:45:00', 7.73, 77.2, 0.47, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 08:00:00', 7.96, 70.6, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 08:15:00', 8.43, 76.1, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 08:30:00', 8.35, 76, 0.37, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 08:45:00', 8.32, 78, 0.29, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 09:00:00', 8.32, 74.4, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 09:15:00', 8.6, 75.4, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 09:30:00', 8.04, 73.8, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 09:45:00', 8.5, 76.1, 0.08, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 10:00:00', 7.92, 78.6, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 10:15:00', 7.37, 78.8, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 10:30:00', 7.98, 74.3, 0.36, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 10:45:00', 7.81, 77.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 11:00:00', 8.09, 75.3, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 11:15:00', 8.37, 73.3, 0.09, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 11:30:00', 8.22, 76.3, 0.3, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 11:45:00', 8.14, 74.4, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 12:00:00', 7.98, 74, 0.22, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 12:15:00', 8.71, 71.5, 0.3, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 12:30:00', 7.41, 74.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 12:45:00', 7.27, 75.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 13:00:00', 7.27, 76.7, 0.39, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 13:15:00', 8.52, 75.7, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 13:30:00', 8.46, 78.4, 0.36, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 13:45:00', 7.67, 75.4, 0.29, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 14:00:00', 7.37, 75.9, 0.48, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 14:15:00', 8.22, 77.9, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 14:30:00', 7.97, 75.8, 0.17, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 14:45:00', 7.66, 77.5, 0.39, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 15:00:00', 7.65, 76.9, 0.24, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 15:15:00', 8.12, 75.9, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 15:30:00', 8.03, 77.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 15:45:00', 8.22, 73.3, 0.47, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 16:00:00', 8.16, 76.4, 0.09, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 16:15:00', 7.71, 77.5, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 16:30:00', 7.33, 77.1, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 16:45:00', 8.49, 74.8, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 17:00:00', 8.41, 73.2, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 17:15:00', 7.93, 76.7, 0.12, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 17:30:00', 7.42, 76.6, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 17:45:00', 7.86, 71.3, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 18:00:00', 8, 76.9, 0.17, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 18:15:00', 8.58, 73.6, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 18:30:00', 8.54, 75.4, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 18:45:00', 7.95, 77.7, 0.4, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 19:00:00', 7.71, 74.9, 0.26, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 19:15:00', 7.65, 74.9, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 19:30:00', 8.4, 77.4, 0.22, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 19:45:00', 7.93, 76.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 20:00:00', 8.21, 74.8, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 20:15:00', 7.67, 77.9, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 20:30:00', 8.57, 74, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 20:45:00', 8.84, 72.9, 0.06, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 21:00:00', 8.45, 73.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 21:15:00', 7.79, 75.5, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 21:30:00', 7.94, 75.9, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 21:45:00', 7.75, 74.3, 0.11, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 22:00:00', 7.85, 75.2, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 22:15:00', 7.91, 75, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 22:30:00', 8.24, 77.9, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 22:45:00', 8.17, 74.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 23:00:00', 8.55, 76, 0.07, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 23:15:00', 8.16, 77.5, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 23:30:00', 8.35, 73.6, 0.1, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-01 23:45:00', 8.05, 71.5, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 00:00:00', 8.45, 71.2, 0.12, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 00:15:00', 7.64, 74.9, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 00:30:00', 8.49, 76.9, 0.3, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 00:45:00', 8.05, 75.8, 0.16, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 01:00:00', 8.3, 72.8, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 01:15:00', 8.42, 75.4, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 01:30:00', 8.14, 69.3, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 01:45:00', 7.96, 74.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 02:00:00', 7.97, 72.7, 0.24, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 02:15:00', 8.02, 75.2, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 02:30:00', 8.36, 72.8, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 02:45:00', 8.45, 71.5, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 03:00:00', 7.8, 74.3, 0.16, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 03:15:00', 7.94, 78.7, 0.12, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 03:30:00', 7.59, 72.4, 0.42, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 03:45:00', 7.84, 74.9, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 04:00:00', 7.67, 74.5, 0.5, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 04:15:00', 8.49, 73.3, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 04:30:00', 7.71, 71.4, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 04:45:00', 8.41, 77.1, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 05:00:00', 7.94, 76.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 05:15:00', 7.86, 71.8, 0.26, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 05:30:00', 8.38, 72.6, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 05:45:00', 8.12, 76.5, 0.34, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 06:00:00', 7.76, 71.8, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 06:15:00', 8.31, 73.9, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 06:30:00', 7.36, 78.5, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 06:45:00', 8.27, 76.9, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 07:00:00', 7.91, 74.7, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 07:15:00', 8.92, 76.1, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 07:30:00', 8.16, 73, 0.4, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 07:45:00', 7.77, 76, 0.36, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 08:00:00', 8.13, 75.2, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 08:15:00', 7.98, 73.8, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 08:30:00', 8.52, 74.8, 0.17, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 08:45:00', 7.82, 77.2, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 09:00:00', 8.2, 74.5, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 09:15:00', 7.77, 74.5, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 09:30:00', 8.31, 73, 0.16, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 09:45:00', 8.04, 78.5, 0.06, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 10:00:00', 8.1, 72.2, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 10:15:00', 7.87, 74.2, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 10:30:00', 8, 73.9, 0.1, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 10:45:00', 8.27, 76.5, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 11:00:00', 7.46, 75.6, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 11:15:00', 7.66, 75.1, 0.24, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 11:30:00', 8.69, 78.9, 0.08, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 11:45:00', 8.95, 73.3, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 12:00:00', 8.44, 73.2, 0.3, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 12:15:00', 8.09, 76.4, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 12:30:00', 8.57, 75.5, 0.23, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 12:45:00', 8.56, 76.5, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 13:00:00', 7.97, 73.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 13:15:00', 8.01, 77, 0.35, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 13:30:00', 8.2, 78.4, 0.39, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 13:45:00', 8.36, 73.9, 0.41, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 14:00:00', 8.28, 75.9, 0.22, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 14:15:00', 8.01, 72.7, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 14:30:00', 8.08, 81.8, 0.14, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 14:45:00', 7.93, 76.8, 0.4, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 15:00:00', 8.42, 76.9, 0.07, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 15:15:00', 8.19, 73.7, 0.06, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 15:30:00', 8.49, 71.4, 0.12, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 15:45:00', 8.29, 74.3, 0.29, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 16:00:00', 8.61, 77.8, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 16:15:00', 8.92, 76, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 16:30:00', 8.73, 76.4, 0.21, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 16:45:00', 8.46, 74.5, 0.29, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 17:00:00', 8.57, 74.9, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 17:15:00', 8.2, 78.2, 0.26, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 17:30:00', 8.35, 77.9, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 17:45:00', 8.18, 78.4, 0.2, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 18:00:00', 8.56, 76.5, 0.36, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 18:15:00', 8.73, 74.1, 0.3, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 18:30:00', 8.58, 80.3, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 18:45:00', 7.99, 77.3, 0.44, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 19:00:00', 9.35, 80.3, 0.15, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 19:15:00', 9.14, 75.2, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 19:30:00', 8.4, 75.4, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 19:45:00', 9.19, 78.4, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 20:00:00', 8.43, 76.2, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 20:15:00', 9.23, 79.2, 0.36, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 20:30:00', 8.69, 71.4, 0.07, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 20:45:00', 9.47, 76.1, 0.17, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 21:00:00', 9.57, 79.5, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 21:15:00', 8.92, 76.8, 0.27, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 21:30:00', 9.61, 77.9, 0.32, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 21:45:00', 9.48, 74.8, 0.33, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 22:00:00', 9, 72.2, 0.04, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 22:15:00', 8.77, 78.3, 0.26, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 22:30:00', 9.21, 81.2, 0.12, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 22:45:00', 9.17, 78, 0.18, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 23:00:00', 9.21, 74.2, 0.39, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 23:15:00', 8.99, 81.5, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 23:30:00', 9.61, 77.4, 0.25, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-02 23:45:00', 9.07, 77.8, 0.28, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 00:00:00', 9.03, 77.3, 0.19, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 00:15:00', 10.13, 77.5, 0.4, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 00:30:00', 9.28, 78.2, 0.12, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 00:45:00', 9.22, 78.2, 0.41, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 01:00:00', 9.48, 80.6, 0.31, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 01:15:00', 9.99, 77.7, 0.49, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 01:30:00', 9.28, 76.4, 0.13, 'SIMULATED - not physical sensor data'),
  ('C005', '2026-11-03 01:45:00', 10.29, 79.6, 0.22, 'SIMULATED - not physical sensor data');


CREATE TABLE `Commodity_Data` (
  `lot_id` VARCHAR(20),
  `commodity` VARCHAR(100),
  `variety` VARCHAR(200),
  `quantity` DECIMAL(12,2),
  `quantity_unit` VARCHAR(20),
  `harvest_or_packing_date_example` DATE,
  `storage_type` VARCHAR(100),
  `notes` TEXT
);

INSERT INTO `Commodity_Data` (`lot_id`, `commodity`, `variety`, `quantity`, `quantity_unit`, `harvest_or_packing_date_example`, `storage_type`, `notes`) VALUES
  ('LOT001', 'Avocado', 'Hass (example; confirm actual variety)', 500, 'kg', '2026-10-30', 'Refrigerated', 'Record actual grade, harvest date and supplier'),
  ('LOT002', 'Avocado', 'Variety not recorded', 800, 'kg', '2026-10-31', 'Refrigerated', 'Example project lot; replace with actual shipment data'),
  ('LOT003', 'Avocado', 'Variety not recorded', 1000, 'kg', '2026-11-01', 'Refrigerated', 'Example project lot; replace with actual shipment data');

CREATE TABLE `Market_Prices` (
  `price_date` DATE,
  `country` VARCHAR(100),
  `state` VARCHAR(100),
  `district` VARCHAR(100),
  `market` VARCHAR(200),
  `commodity` VARCHAR(100),
  `min_price_inr_quintal` DECIMAL(12,2),
  `modal_price_inr_quintal` DECIMAL(12,2),
  `max_price_inr_quintal` DECIMAL(12,2),
  `reported_price_inr_quintal` DECIMAL(12,2),
  `original_unit` VARCHAR(50),
  `modal_price_inr_kg` DECIMAL(12,2),
  `coverage_note` TEXT,
  `source_note` TEXT
);

INSERT INTO `Market_Prices` (`price_date`, `country`, `state`, `district`, `market`, `commodity`, `min_price_inr_quintal`, `modal_price_inr_quintal`, `max_price_inr_quintal`, `reported_price_inr_quintal`, `original_unit`, `modal_price_inr_kg`, `coverage_note`, `source_note`) VALUES
  ('2026-10-31', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 17500, 'INR/quintal', 175, '1 mandi report; not a national median', 'Acrop page reports ₹17,500/quintal for Gaddiannaram APMC; arrival quantity not reported'),
  ('2026-10-30', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 17500, 'INR/quintal', 175, '1 mandi report; not a national median', 'Acrop history lists ₹17,500/quintal; arrival quantity not reported'),
  ('2026-10-27', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 17500, 'INR/quintal', 175, '1 mandi report; not a national median', 'Acrop history lists ₹17,500/quintal; arrival quantity not reported'),
  ('2026-10-24', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 15000, 'INR/quintal', 150, '1 mandi report; not a national median', 'Acrop history lists ₹15,000/quintal; arrival quantity not reported'),
  ('2026-10-23', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 15000, 'INR/quintal', 150, '1 mandi report; not a national median', 'Acrop history lists ₹15,000/quintal; arrival quantity not reported'),
  ('2026-10-22', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 15000, 'INR/quintal', 150, '1 mandi report; not a national median', 'Acrop history lists ₹15,000/quintal; arrival quantity not reported'),
  ('2026-10-17', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 15000, 'INR/quintal', 150, '1 mandi report; not a national median', 'Acrop history lists ₹15,000/quintal; arrival quantity not reported'),
  ('2026-10-15', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', NULL, NULL, NULL, 15000, 'INR/quintal', 150, '1 mandi report; not a national median', 'Acrop history lists ₹15,000/quintal; arrival quantity not reported'),
  ('2026-09-24', 'India', 'Telangana', 'Ranga Reddy', 'Gaddiannaram APMC', 'Avocado', 12500, 15000, 20000, 15000, 'INR/quintal', 150, 'Single row in source dataset', 'QuintalX reports min ₹125/kg, modal ₹150/kg, max ₹200/kg; converted to INR/quintal for consistency');

CREATE TABLE `Transport_Routes` (
  `origin_city` VARCHAR(100),
  `destination_city` VARCHAR(100),
  `road_distance_km` DECIMAL(10,2),
  `estimated_transport_cost_inr` DECIMAL(12,2),
  `data_status` VARCHAR(100),
  `notes` TEXT
);
INSERT INTO `Transport_Routes` (`origin_city`, `destination_city`, `road_distance_km`, `estimated_transport_cost_inr`, `data_status`, `notes`) VALUES
  ('Pune', 'Mumbai', NULL, NULL, 'To be verified', 'Do not treat as real quote; obtain route distance and refrigerated vehicle quotation'),
  ('Pune', 'Nashik', NULL, NULL, 'To be verified', 'Do not treat as real quote; obtain route distance and refrigerated vehicle quotation'),
  ('Mumbai', 'Nashik', NULL, NULL, 'To be verified', 'Do not treat as real quote; obtain route distance and refrigerated vehicle quotation');


-- Expected row counts: Sensor_Data=1000; Commodity_Data=3; Market_Prices=9; Transport_Routes=3
SELECT 'Sensor_Data' AS table_name, COUNT(*) AS row_count FROM Sensor_Data
UNION ALL SELECT 'Commodity_Data', COUNT(*) FROM Commodity_Data
UNION ALL SELECT 'Market_Prices', COUNT(*) FROM Market_Prices
UNION ALL SELECT 'Transport_Routes', COUNT(*) FROM Transport_Routes;

-- NULL counts per column (each query returns one row per column)
SELECT 'Sensor_Data' AS table_name,
  SUM(container_id IS NULL) AS container_id_nulls,
  SUM(timestamp_local IS NULL) AS timestamp_nulls,
  SUM(temperature_c IS NULL) AS temperature_nulls,
  SUM(relative_humidity_pct IS NULL) AS humidity_nulls,
  SUM(vibration_g IS NULL) AS vibration_nulls,
  SUM(data_status IS NULL) AS status_nulls
FROM Sensor_Data;
SELECT
  SUM(lot_id IS NULL) AS lot_id_nulls, SUM(commodity IS NULL) AS commodity_nulls,
  SUM(variety IS NULL) AS variety_nulls, SUM(quantity IS NULL) AS quantity_nulls,
  SUM(quantity_unit IS NULL) AS unit_nulls, SUM(harvest_or_packing_date_example IS NULL) AS date_nulls,
  SUM(storage_type IS NULL) AS storage_nulls, SUM(notes IS NULL) AS notes_nulls
FROM Commodity_Data;
SELECT
  SUM(price_date IS NULL) AS date_nulls, SUM(country IS NULL) AS country_nulls,
  SUM(state IS NULL) AS state_nulls, SUM(district IS NULL) AS district_nulls,
  SUM(market IS NULL) AS market_nulls, SUM(commodity IS NULL) AS commodity_nulls,
  SUM(min_price_inr_quintal IS NULL) AS min_price_nulls,
  SUM(modal_price_inr_quintal IS NULL) AS modal_price_nulls,
  SUM(max_price_inr_quintal IS NULL) AS max_price_nulls,
  SUM(reported_price_inr_quintal IS NULL) AS reported_price_nulls,
  SUM(modal_price_inr_kg IS NULL) AS price_kg_nulls
FROM Market_Prices;
SELECT SUM(origin_city IS NULL) AS origin_nulls, SUM(destination_city IS NULL) AS destination_nulls,
  SUM(road_distance_km IS NULL) AS distance_nulls,
  SUM(estimated_transport_cost_inr IS NULL) AS cost_nulls
FROM Transport_Routes;

-- Exact duplicate rows
SELECT container_id, timestamp_local, temperature_c, relative_humidity_pct, vibration_g, data_status, COUNT(*) AS duplicate_count
FROM Sensor_Data GROUP BY container_id, timestamp_local, temperature_c, relative_humidity_pct, vibration_g, data_status
HAVING COUNT(*) > 1;
SELECT lot_id, COUNT(*) AS duplicate_count FROM Commodity_Data GROUP BY lot_id HAVING COUNT(*) > 1;
SELECT price_date, market, commodity, reported_price_inr_quintal, COUNT(*) AS duplicate_count
FROM Market_Prices GROUP BY price_date, market, commodity, reported_price_inr_quintal HAVING COUNT(*) > 1;
SELECT origin_city, destination_city, COUNT(*) AS duplicate_count FROM Transport_Routes
GROUP BY origin_city, destination_city HAVING COUNT(*) > 1;

-- TIMESTAMP CONTINUITY: return zero rows when all readings are exactly 15 minutes apart per container.
WITH ordered_readings AS (
  SELECT container_id, timestamp_local,
    LAG(timestamp_local) OVER (PARTITION BY container_id ORDER BY timestamp_local) AS previous_timestamp
  FROM Sensor_Data
)
SELECT container_id, previous_timestamp, timestamp_local,
  TIMESTAMPDIFF(MINUTE, previous_timestamp, timestamp_local) AS interval_minutes
FROM ordered_readings
WHERE previous_timestamp IS NOT NULL
  AND TIMESTAMPDIFF(MINUTE, previous_timestamp, timestamp_local) <> 15;

-- Duplicate timestamp per container (should return zero rows)
SELECT container_id, timestamp_local, COUNT(*) AS count_rows
FROM Sensor_Data GROUP BY container_id, timestamp_local HAVING COUNT(*) > 1;

-- Sensor value range checks (should return zero rows for these broad physical sanity bounds)
SELECT * FROM Sensor_Data WHERE temperature_c < -20 OR temperature_c > 60;
SELECT * FROM Sensor_Data WHERE relative_humidity_pct < 0 OR relative_humidity_pct > 100;
SELECT * FROM Sensor_Data WHERE vibration_g < 0;

-- Statistical vibration screening: review values >= 0.53g; flagged readings are not automatically changed.
SELECT container_id, timestamp_local, vibration_g FROM Sensor_Data WHERE vibration_g >= 0.53 ORDER BY vibration_g DESC;

-- Container ID validation against expected simulated IDs
SELECT * FROM Sensor_Data WHERE container_id NOT IN ('C001','C002','C003','C004','C005');

-- Commodity validation: missing IDs, non-positive quantity, placeholder/example text for review
SELECT * FROM Commodity_Data WHERE lot_id IS NULL OR quantity <= 0;
SELECT * FROM Commodity_Data WHERE variety LIKE '%example%' OR variety LIKE '%not recorded%' OR notes LIKE '%example%';

-- Market price validations: negative prices, price range consistency, conversion check
SELECT * FROM Market_Prices WHERE min_price_inr_quintal < 0 OR modal_price_inr_quintal < 0
  OR max_price_inr_quintal < 0 OR reported_price_inr_quintal < 0 OR modal_price_inr_kg < 0;
SELECT * FROM Market_Prices WHERE min_price_inr_quintal > modal_price_inr_quintal
  OR modal_price_inr_quintal > max_price_inr_quintal;
SELECT * FROM Market_Prices WHERE modal_price_inr_kg IS NOT NULL
  AND modal_price_inr_quintal IS NOT NULL
  AND ABS(modal_price_inr_kg - modal_price_inr_quintal / 100) > 0.01;

-- Transport validation: missing distance/cost and non-positive populated values
SELECT * FROM Transport_Routes WHERE road_distance_km IS NULL OR estimated_transport_cost_inr IS NULL;
SELECT * FROM Transport_Routes WHERE road_distance_km <= 0 OR estimated_transport_cost_inr < 0;

-- ===============================================================
-- ANALYSIS QUERIES
SELECT container_id, AVG(temperature_c) AS avg_temperature_c FROM Sensor_Data GROUP BY container_id ORDER BY container_id;
SELECT container_id, AVG(relative_humidity_pct) AS avg_humidity_pct FROM Sensor_Data GROUP BY container_id ORDER BY container_id;
SELECT container_id, AVG(vibration_g) AS avg_vibration_g FROM Sensor_Data GROUP BY container_id ORDER BY container_id;
SELECT commodity, MIN(reported_price_inr_quintal) AS min_reported_price,
  MAX(reported_price_inr_quintal) AS max_reported_price, AVG(reported_price_inr_quintal) AS avg_reported_price
FROM Market_Prices GROUP BY commodity;
SELECT commodity, SUM(quantity) AS total_quantity, quantity_unit FROM Commodity_Data GROUP BY commodity, quantity_unit;
SELECT origin_city, destination_city, road_distance_km, estimated_transport_cost_inr, data_status FROM Transport_Routes;

-- Additional market-price trend
SELECT price_date, market, commodity, reported_price_inr_quintal, modal_price_inr_kg
FROM Market_Prices ORDER BY price_date;

-- Source classification: inspect notes/status to distinguish sourced, simulated and example records
SELECT data_status, COUNT(*) AS records FROM Sensor_Data GROUP BY data_status;
SELECT lot_id, notes FROM Commodity_Data;
SELECT origin_city, destination_city, data_status, notes FROM Transport_Routes;

-- ===============================================================
-- CONSOLIDATED DATA VALIDATION SUMMARY
-- Provides a single result set showing PASS, FAIL, or WARNING.
-- ===============================================================

SELECT
    'Sensor_Data Row Count' AS validation_check,
    CASE
        WHEN (SELECT COUNT(*) FROM Sensor_Data) = 1000
        THEN 'PASS'
        ELSE 'FAIL'
    END AS validation_status,
    (SELECT COUNT(*) FROM Sensor_Data) AS observed_value,
    'Expected: 1000 records' AS details

UNION ALL

SELECT
    'Commodity_Data Row Count',
    CASE
        WHEN (SELECT COUNT(*) FROM Commodity_Data) = 3
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (SELECT COUNT(*) FROM Commodity_Data),
    'Expected: 3 records'

UNION ALL

SELECT
    'Market_Prices Row Count',
    CASE
        WHEN (SELECT COUNT(*) FROM Market_Prices) = 9
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (SELECT COUNT(*) FROM Market_Prices),
    'Expected: 9 records'

UNION ALL

SELECT
    'Transport_Routes Row Count',
    CASE
        WHEN (SELECT COUNT(*) FROM Transport_Routes) = 3
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (SELECT COUNT(*) FROM Transport_Routes),
    'Expected: 3 records'

UNION ALL

SELECT
    'Duplicate Sensor Readings',
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM (
                SELECT container_id, timestamp_local
                FROM Sensor_Data
                GROUP BY container_id, timestamp_local
                HAVING COUNT(*) > 1
            ) AS duplicates
        ) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (
        SELECT COUNT(*)
        FROM (
            SELECT container_id, timestamp_local
            FROM Sensor_Data
            GROUP BY container_id, timestamp_local
            HAVING COUNT(*) > 1
        ) AS duplicates
    ),
    'Expected: 0 duplicate container/timestamp combinations'

UNION ALL

SELECT
    'Invalid Sensor Timestamp Intervals',
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM (
                SELECT
                    container_id,
                    timestamp_local,
                    LAG(timestamp_local) OVER (
                        PARTITION BY container_id
                        ORDER BY timestamp_local
                    ) AS previous_timestamp
                FROM Sensor_Data
            ) AS timestamp_check
            WHERE previous_timestamp IS NOT NULL
              AND TIMESTAMPDIFF(
                    MINUTE,
                    previous_timestamp,
                    timestamp_local
                  ) <> 15
        ) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (
        SELECT COUNT(*)
        FROM (
            SELECT
                container_id,
                timestamp_local,
                LAG(timestamp_local) OVER (
                    PARTITION BY container_id
                    ORDER BY timestamp_local
                ) AS previous_timestamp
            FROM Sensor_Data
        ) AS timestamp_check
        WHERE previous_timestamp IS NOT NULL
          AND TIMESTAMPDIFF(
                MINUTE,
                previous_timestamp,
                timestamp_local
              ) <> 15
    ),
    'Expected: 0 intervals different from 15 minutes'

UNION ALL

SELECT
    'Sensor Range Violations',
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM Sensor_Data
            WHERE temperature_c < -20
               OR temperature_c > 60
               OR relative_humidity_pct < 0
               OR relative_humidity_pct > 100
               OR vibration_g < 0
        ) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (
        SELECT COUNT(*)
        FROM Sensor_Data
        WHERE temperature_c < -20
           OR temperature_c > 60
           OR relative_humidity_pct < 0
           OR relative_humidity_pct > 100
           OR vibration_g < 0
    ),
    'Expected: 0 sensor values outside defined physical bounds'

UNION ALL

SELECT
    'Invalid Commodity Quantities',
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM Commodity_Data
            WHERE lot_id IS NULL
               OR quantity IS NULL
               OR quantity <= 0
        ) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (
        SELECT COUNT(*)
        FROM Commodity_Data
        WHERE lot_id IS NULL
           OR quantity IS NULL
           OR quantity <= 0
    ),
    'Expected: 0 records with missing IDs or invalid quantities'

UNION ALL

SELECT
    'Negative Market Prices',
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM Market_Prices
            WHERE min_price_inr_quintal < 0
               OR modal_price_inr_quintal < 0
               OR max_price_inr_quintal < 0
               OR reported_price_inr_quintal < 0
               OR modal_price_inr_kg < 0
        ) = 0
        THEN 'PASS'
        ELSE 'FAIL'
    END,
    (
        SELECT COUNT(*)
        FROM Market_Prices
        WHERE min_price_inr_quintal < 0
           OR modal_price_inr_quintal < 0
           OR max_price_inr_quintal < 0
           OR reported_price_inr_quintal < 0
           OR modal_price_inr_kg < 0
    ),
    'Expected: 0 negative price values'

UNION ALL

SELECT
    'Missing Transport Distance or Cost',
    CASE
        WHEN (
            SELECT COUNT(*)
            FROM Transport_Routes
            WHERE road_distance_km IS NULL
               OR estimated_transport_cost_inr IS NULL
        ) = 0
        THEN 'PASS'
        ELSE 'WARNING'
    END,
    (
        SELECT COUNT(*)
        FROM Transport_Routes
        WHERE road_distance_km IS NULL
           OR estimated_transport_cost_inr IS NULL
    ),
    'Missing values require verification; source data is not fabricated'

UNION ALL

SELECT
    'High Vibration Readings',
    'INFO',
    (
        SELECT COUNT(*)
        FROM Sensor_Data
        WHERE vibration_g >= 0.53
    ),
    'Readings >= 0.53g are flagged for review; not automatically modified';

    -- ============================================================
-- SUDDEN TEMPERATURE CHANGE DETECTION
-- ============================================================

WITH temperature_trends AS (
    SELECT
        container_id,
        timestamp_local,
        temperature_c,

        LAG(temperature_c) OVER (
            PARTITION BY container_id
            ORDER BY timestamp_local
        ) AS previous_temperature

    FROM Sensor_Data
)

SELECT
    container_id,
    timestamp_local,
    previous_temperature,
    temperature_c,

    ROUND(
        temperature_c - previous_temperature,
        2
    ) AS temperature_change_c,

    CASE
        WHEN temperature_c - previous_temperature >= 2
            THEN 'SUDDEN TEMPERATURE INCREASE'

        WHEN temperature_c - previous_temperature <= -2
            THEN 'SUDDEN TEMPERATURE DECREASE'

        ELSE 'NORMAL CHANGE'
    END AS temperature_status

FROM temperature_trends

WHERE previous_temperature IS NOT NULL
  AND ABS(temperature_c - previous_temperature) >= 2

ORDER BY ABS(temperature_c - previous_temperature) DESC;

-- ============================================================
-- CONTAINER TEMPERATURE STABILITY ANALYSIS
-- ============================================================

WITH container_temperature_stats AS (
    SELECT
        container_id,
        COUNT(*) AS total_readings,
        ROUND(AVG(temperature_c), 2) AS average_temperature,
        ROUND(MIN(temperature_c), 2) AS minimum_temperature,
        ROUND(MAX(temperature_c), 2) AS maximum_temperature,
        ROUND(MAX(temperature_c) - MIN(temperature_c), 2) AS temperature_range,
        ROUND(STDDEV_POP(temperature_c), 3) AS temperature_variability
    FROM Sensor_Data
    GROUP BY container_id
)

SELECT
    container_id,
    total_readings,
    average_temperature,
    minimum_temperature,
    maximum_temperature,
    temperature_range,
    temperature_variability,

    RANK() OVER (
        ORDER BY temperature_variability ASC
    ) AS stability_rank,

    CASE
        WHEN temperature_variability <= 0.50
            THEN 'STABLE'

        WHEN temperature_variability <= 1.00
            THEN 'MODERATE FLUCTUATION'

        ELSE 'HIGH FLUCTUATION'
    END AS stability_category

FROM container_temperature_stats

ORDER BY stability_rank;