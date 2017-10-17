# Create a vector of 100 Credit Card Users
user = 1:100

# Create a vector of amount of money owed using the runif function
owed = runif(100, 0, 100)

# Create a vector of amount of money paid (that are typically higher than the amount Owed) (use runif again)
paid = owed + runif(100, -50, 100)

# Create a data.frame by combining the vectors
bank_stuff = data.frame(user, owed, paid)

# Create a column "Difference" that stores the difference between amount Paid and amount Owed
bank_stuff$difference = bank_stuff$owed-bank_stuff$paid

# Create a column that is TRUE if the person Paid more than they Owe
bank_stuff$paid_Debt = bank_stuff$difference > 0

# What was the amount Owed of User 57?
bank_stuff[57, "owed"]

# How many users paid more than they owe?
paidMore = nrow(filter(bank_stuff, bank_stuff$difference>0))

# What was the total amount of money paid for all users?
totalPaid = sum(bank_stuff$paid)

# What was the name of the user who had the highest "Difference"?
highestDifference = bank_stuff[bank_stuff$difference == max(bank_stuff$difference), 1]

# Who was the user with the largest amount paid?
largestPaid = bank_stuff[bank_stuff$paid == max(bank_stuff$paid), 1]

# What was the average "Difference"?
avgDifference = mean(bank_stuff$difference)

# challenge: how to use dplyr to answer these questions?
