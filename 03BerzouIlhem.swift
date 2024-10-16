/*
Name: Ilhem Berzou
Lab: 03 Selections
Description: Calculating the average of four grades that are within the range of 0-100 (inclusive)
Algorithm: 
1. Declare a constant float variable for grade1:
let grade1 = 88.88
2. Declare a constant float variable for grade2:
let grade2 = 90.0
3. Declare a constant float variable for grade3:
let grade3 = 87.0
4. Declare a constant float variable for grade4:
let grade4 = 0.0 
6. Declare a float variable to store the total of valid grades
var totalGrade: Float = 0.0
7. Write If statements to ensure that any grade greater than 100 or less than 0 are excluded

if (grade1 >= 0.0) && (grade1 <= 100.0) {
    totalGrade += grade1
} 

else if (grade2 >= 0.0) && (grade2 <= 100.0) {
    totalGrade += grade2
} 

else if (grade3 >= 0.0) && (grade3 <= 100.0) {
    totalGrade += grade3
} 

else if (grade4 >= 0.0) && (grade4 <= 100.0) {
    totalGrade += grade4
}
8. If all the grades are invalid then print out: “All entries are invalid” else print out gradeAverage

else {
    print("All enteries are invalid")
}

9. Declare a float variable: gradeAverage to store and calculate the grade average in 
10. Print the calculated gradeAverage

let gradeAverage: Float = totalGrade / 4.0
print(gradeAverage)

*/

// Declare cosntant variables 
let grade1: Float = 88.8
let grade2: Float = 90
let grade3: Float = 87
let grade4: Float = 0

// Declare a float variable to store the total of valid grades
var totalGrade: Float = 0.0

// If statements to ensure that any grade greater than 100 or less than 0 are excluded
if (grade1 >= 0.0) && (grade1 <= 100.0) {
    totalGrade += grade1
} 

else if (grade2 >= 0.0) && (grade2 <= 100.0) {
    totalGrade += grade2
} 

else if (grade3 >= 0.0) && (grade3 <= 100.0) {
    totalGrade += grade3
} 

else if (grade4 >= 0.0) && (grade4 <= 100.0) {
    totalGrade += grade4
}

// If all the grades are invalid then print out: “All entries are invalid” else print out gradeAverage
else {
    print("All enteries are invalid")
    totalGrade = -1.0
}

if totalGrade >= 0.0 {
let gradeAverage: Float = totalGrade / 4.0
print(gradeAverage)
}



