# You have been supplied with two vectors of data: Monthly revenue and monthly expenses for the financial year in question
# You must calculate the following financial metrics:
  # profit for each month
  # profit after tax for each month (Tax rate at 30%)
  # profit margin for each month - profit after tax divided by revenue
  # good months - where profit after tax was greater than mean for the year
  # bad months - where profit after tax was less than the mean for the year
  # best month - highest profit after tax for the year
  # worst month - lowest profit after tax for the year

# All results should be presented as vectors, best and worst months should be presented as true and false vectors
# Results for dollar values need to be calculated with $0.01 percision but need to be presented in units of $1000
# Results for profit margin ratio need to be presented in units of %, i.e. no decimal points

# Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Solution
profitPerMonth <- revenue - expenses
profitPerMonth

taxRate <- rep(.3, 12)
profitAfterTax <- profitPerMonth - (profitPerMonth * taxRate)
profitAfterTax

?round()
profitMargin <- profitPerMonth / revenue
profitMargin
profitMargin = round(profitMargin, 2) * rep(100, 12)
profitMargin

?mean()
meanPAT = mean(profitAfterTax)
goodMonths = profitAfterTax > rep(meanPAT, 12)
goodMonths

badMonths = profitAfterTax < rep(meanPAT, 12)
badMonths

?max()
bestMonth = rep(max(profitAfterTax), 12) == profitAfterTax
bestMonth

worstMonth = rep(min(profitAfterTax), 12) == profitAfterTax
worstMonth