/*
Name: Ilhem Berzou
Lab: 06 Functions and Collections
Description: Randomly generate at least five test grades and store them in an array; pass the array to 
a function along with 3 closures as parameters.These closures should: 
print out all the values in the array, return the index of the lowest value, 
return the index of the highest value, respectively.
Lastly, make the function: call first closure to print all the grades in the array,
print the number of grades in the array, list the lowest and highest grades,
and call second and third closure to list the indices of the lowest and highest grades.
Algorithm: 
a. Declare an empty array that will store 5 integers: var grades = [Int]()
b. Generate 5 randam grades and assign them to the array using a while loop: var i: Int = 0

while (i < 5) {
grades.append(Int.random(in: 0...100))
i += 1
}
c. Declare first closure to print grades: let printGrades = {  
print("Grades: \(grades)")
}
d. Declare second closure to return the index of the lowest value: let minIndex = {
let lowestGrade = grades.min()!
if let index = grades.firstIndex(of: lowestGrade) {
    print("Index of lowest grade:", index)
}
}
e. Declare third closure to return the index of the highest value: let maxIndex = {
let highestGrade = grades.max()!
if let index = grades.firstIndex(of: highestGrade) {
    print("Index of Highest grade", index)
}
}
f. Declare the function and and pass it the array and three closures
func randomGrades(_ grades: [Int], _: () -> (),_: () -> (), _: () -> ()) {
    printGrades()
    print("The number of grades: \(grades.count)")
    print("The lowest grade: \(grades.min()!)")
    print("The highest grade: \(grades.max()!)")
    minIndex()
    maxIndex()
}
g. Call the function
randomGrades(grades, printGrades, minIndex, maxIndex)
*/
import Foundation

//empty array
var grades = [Int]()

//Assigning random Int to the empty array 
var i: Int = 0
while (i < 5) {
grades.append(Int.random(in: 0...100))
i += 1
}

//closure 1
let printGrades = {  
print("Grades: \(grades)")
}


//closure 2
let minIndex = {
let lowestGrade = grades.min()!
if let index = grades.firstIndex(of: lowestGrade) {
    print("Index of lowest grade", index)
}
}

//closure 3
let maxIndex = {
let highestGrade = grades.max()!
if let index = grades.firstIndex(of: highestGrade) {
    print("Index of Highest grade", index)
}
}


//The main function and passing it the array and three closures as parameters
func randomGrades(_ grades: [Int], _: () -> (),_: () -> (), _: () -> ()) {
    printGrades()
    print("The number of grades: \(grades.count)")
    print("The lowest grade: \(grades.min()!)")
    print("The highest grade: \(grades.max()!)")
    minIndex()
    maxIndex()
}

//Calling the function   
randomGrades(grades, printGrades, minIndex, maxIndex)