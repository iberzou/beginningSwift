/*
Name: Ilhem Berzou
Lab: 04 Loops
Description: Define test grades UNTIL a negative number is encountered; additionally, 
display the number of grades generated, and the number of passing grades, total, and 
the average of the grades
Algorithm: 
a. Declare an (non-constant) integer variable for # of grades: numGrades=0
b. Declare an integer variable for # of passing grades: numPassingGrades=0
c. Declare a double variable for an inputted test grade: inputtedTest=0
d. Declare a double variable for the running total of the grades: total=0
e. Declare a double variable for the average: average=0
f. Make sure and set all the above variables to 0 to start off
g. ------------------------------------------------------------
h. Create a Repeat-while loop that runs until inputtedTest >= 0
   a. Increment numGrades += 1 
   b. Generate a random test grade
   c. Now add that inputtedTest to the running total: total += inputtedTest
   d. Using an if statement check to see if inputtedTest is greater than 
   or equal to 60 (passing grade) and if so, increment numPassingGrades += 1
i. Use an If statment to ADJUST THE numGrades variable and total variable. 
to check if the negative number were added to the total, 
if so then subtract that number from total and also adjust the
numGrades.
j. Calculate the average and save in average and print it out
*/

import Foundation

var numGrades: Int = 0
var numPassingGrades: Int = 0
var inputtedTest: Double = 0 
var total: Double = 0
var average: Double = 0

repeat {
numGrades += 1
let grade = Int.random(in: -20...100) 
inputtedTest = Double(grade)
print("Grade score: \(inputtedTest)")
total += inputtedTest


if inputtedTest >= 60 {
numPassingGrades += 1
}
}
while (inputtedTest >= 0) 

if inputtedTest < 0 {
    numGrades -= 1
    total -= inputtedTest
}

average = total / Double(numGrades)
print("Number of Grades: \(numGrades)")
print("Number of Passing Grades: \(numPassingGrades)")
print("Total: \(total)")
print("Average: \(average)")

