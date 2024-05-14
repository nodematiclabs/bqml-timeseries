-- Creating a time series model
CREATE OR REPLACE MODEL `your_project.your_dataset.sales_forecast_model`
OPTIONS(
  model_type='ARIMA_PLUS',
  time_series_timestamp_col='date',
  time_series_data_col='sales',
  data_frequency='AUTO_FREQUENCY',
  decompose_time_series=True
) AS
SELECT date, sales
FROM `your_project.your_dataset.sales_data`;
