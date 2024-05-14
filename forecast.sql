-- Making predictions
SELECT *
FROM ML.FORECAST(MODEL `your_project.your_dataset.sales_forecast_model`,
                 STRUCT(10 AS horizon, 0.8 AS confidence_level));
