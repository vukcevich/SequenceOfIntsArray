//: Playground - noun: a place where people can play

import UIKit

//Coding Test  --- Swift 3

//Find sequence in integers in an array of integers 
//input: 5,6,7,8
//output: "5-8"
//input: 2,5,6,7,8,10,14,17,18,25
//output: "2","5-8","10","14","17-18","25"



//let ar = [1,2,3,5,6,7,8,12,21,34,35,44,45,46,47,48]
//let ar = [5,6,7,8]
let ar = [2,5,6,7,8,10,14,17,18,25]

print("Find sequence in array:")
print("Input: ", ar)

var output = ""
//Check if it's sequence or not
var seq = false
var k = 0 //count variable -- to compare for last, 'continue' skips

for (i, value) in ar.enumerated() {
    // print(i, value) //first check
    
    k = i //count variable -- to compare for last
    
    //populate first
    if (i == 0 ) {
        output += "\(ar[i])"
    }
    
    //check if not last
    if (i < ar.count - 1) {

        //difference between current and next should be 1, if sequence, otherwise, append
        let v = ar[i + 1] - value
     
        if (v == 1) {
            seq = true //set to true - it's sequence
            k += 1 //update count, due to 'continue'
           
            //Skip last index so we can capture it and added to result
            if ( k != ar.endIndex - 1) {
                continue
            }
        }
      
        //end of sequence if not same value
        if (ar[i + 1] != value) {
           
            //check if sequence is true
             if (seq) {
                //last value in index needs to be added
                if(k == ar.endIndex - 1) {
                    output += "-\(ar[i + 1])"
                } else {
                    output += "-\(ar[i])"
                }
            }
        }
        
        //start new sequnce if v value larger then 1
        if (v >= 2) {
            output += ","
            output += "\(ar[i + 1])"
            seq = false
        }
   }
    
}
print("Final-output:", output)





