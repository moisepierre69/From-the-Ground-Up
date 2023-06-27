# Install and load necessary packages
install.packages(c('ggplot2','dplyr','sqldf','lubridate','forecast'))
library(ggplot2)
library(dplyr)
library(sqldf)
library(lubridate)
library(forecast)

# Create a vector of the dates 2011-01-01 to 2011-12-31
date_range <- seq(as.Date("2011-01-01"), as.Date("2011-12-31"), by = "days")

# Create a data frame containing the dates and a random variable
ts_data <- data.frame(date=date_range, value=rnorm(length(date_range)))

# Plot the time series
ggplot(ts_data, aes(x=date, y=value)) +
  geom_line() +
  xlab("Date") +
  ylab("Value")

# Summarize the time series
summary(ts_data$value)

# Group the data by month
monthly_data <- ts_data %>% 
  group_by(month=floor_date(date, "month")) %>% 
  summarise(mean=mean(value),
            sd=sd(value))

# Plot the summarised data
ggplot(monthly_data, aes(x=month, y=mean)) +
  geom_line() +
  geom_point() +
  xlab("Month") +
  ylab("Mean Value") +
  ggtitle("Mean Monthly Time Series")

# Fit a linear model to the data
fit <- lm(value ~ date, data=ts_data)

# Make predictions
preds <- predict(fit, data.frame(date=date_range))

# Plot results
ggplot(ts_data, aes(x=date, y=value)) +
  geom_line() +
  geom_line(data=data.frame(date=date_range, value=preds), aes(x=date, y=value), color="red") +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values")

# Fit an ARIMA model
model = arima(ts_data$value, order=c(1,1,1))

# Make predictions from the model
preds.arima <- predict(model, n.ahead=length(date_range))$pred

# Plot the ARIMA model results
ggplot(ts_data, aes(x=date, y=value)) +
  geom_line() +
  geom_line(data=data.frame(date=date_range, value=preds.arima), aes(x=date, y=value), color="red") +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values - ARIMA Model")

# Compute correlation between original values and predictions
cor(ts_data$value, preds)

# Compute correlation between original values and ARIMA predictions
cor(ts_data$value, preds.arima)

# Create a data frame for lagged values
lag_data <- ts_data %>%
  group_by(month=yday(date)) %>%
  mutate(lag=lag(value,7)) 

# Create a linear regression model for the lagged data
fit.lag <- lm(value ~ lag, data=lag_data)

# Make predictions on the lagged data
preds.lag <- predict(fit.lag, data.frame(date=date_range, lag=lag_data$lag))

# Plot the lagged model results
ggplot(ts_data, aes(x=date, y=value)) +
  geom_line() +
  geom_line(data=data.frame(date=date_range, value=preds.lag),
            aes(x=date, y=value), color="red") +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values - Lagged Model")

# Compute correlation between original values and predictions
cor(ts_data$value,preds.lag)

# Create a seasonal component to the time series
seasonal_data <- ts_data %>% 
  group_by(month=yday(date)) %>% 
  mutate(seasonal=mean(value))

# Fit a linear model with the seasonal component
fit.seasonal <- lm(value ~ seasonal, data=seasonal_data)

# Make predictions on the seasonal data
preds.seasonal <- predict(fit.seasonal, data.frame(date=date_range, seasonal=seasonal_data$seasonal))

# Plot the seasonal model results
ggplot(ts_data, aes(x=date, y=value)) +
  geom_line() +
  geom_line(data=data.frame(date=date_range, value=preds.seasonal), aes(x=date, y=value), color="red") +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values - Seasonal Model")

# Compute correlation between original values and predictions
cor(ts_data$value, preds.seasonal)

# Fit an ARIMAX model
model.arimax <- arima(ts_data$value, order=c(1,1,1), xreg=seasonal_data$seasonal)

# Make predictions from the ARIMAX model
preds.arimax <- predict(model.arimax, n.ahead=length(date_range))$pred

# Plot the ARIMAX model results
ggplot(ts_data, aes(x=date, y=value)) +
  geom_line() +
  geom_line(data=data.frame(date=date_range, value=preds.arimax), aes(x=date, y=value), color="red") +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values - ARIMAX Model")

# Compute correlation between original values and predictions
cor(ts_data$value, preds.arimax)

# Create a month column in the original time series data
ts_data$month <- floor_date(ts_data$date, 'month')

# Create a subset of data by month
ts_subset <- ts_data %>% 
  group_by(month=yday(date)) %>% 
  summarise(mean=mean(value),
            sd=sd(value))

# Fit a linear regression model
fit.subset <- lm(mean ~ month, data=ts_subset)

# Make predictions
preds.subset <- predict(fit.subset, data.frame(month=ts_subset$month))

# Plot the results
ggplot(ts_subset, aes(x=month, y=mean)) +
  geom_line() +
  geom_point() +
  geom_line(data=data.frame(month=ts_subset$month, value=preds.subset), aes(x=month, y=value), color="red") +
  xlab("Month") +
  ylab("Mean Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values - Subset Model")

# Compute correlation between original values and predictions
cor(ts_subset$mean, preds.subset)

# Fit an ARIMA model to the monthly data
model.seasonal <- arima(ts_subset$mean, order=c(1,1,1))

# Make predictions
preds.seasonal <- predict(model.seasonal, n.ahead=length(ts_subset$month))$pred

# Plot the results
ggplot(ts_subset, aes(x=month, y=mean)) +
  geom_line() +
  geom_point() +
  geom_line(data=data.frame(month=ts_subset$month, value=preds.seasonal), aes(x=month, y=value), color="red") +
  xlab("Month") +
  ylab("Mean Value") +
  ggtitle("Original (Blue) and Predicted (Red) Values - ARIMA Model")

# Compute correlation between original values and predictions
cor(ts_subset$mean, preds.seasonal)