import UIKit



func bubbleSort(_ array:inout [Int], by: Character = "<"){
    
    if by == ">" {
    for first in 0..<array.count{
        for index in 1..<array.count - first{
            if array[index] > array[(index - 1)] {
                let temp = array[(index)]
                array[(index)] = array[index - 1]
                array[index - 1] = temp
            }
        }
    }
    } else {
        for first in 0..<array.count{
            for index in 1..<array.count - first{
                if array[index] < array[(index - 1)] {
                    let temp = array[(index - 1)]
                    array[(index - 1)] = array[index]
                    array[index] = temp
                }
            }
        }
    }
}


// Test Cases
var arr1 = [1, 3, 6, 2, 4, 5]
var arr3 = [6, 5, 4, 3, 2, 1]
bubbleSort(&arr1) // returns [1, 2, 3, 4, 5, 6]
bubbleSort(&arr1, by: ">") // returns [6, 5, 4, 3, 2, 1]
bubbleSort(&arr3) // returns [6, 5, 4, 3, 2, 1]


// Test Cases (Stretch Goal)
//var arr4 = [1, 3, 6, 2, 4, 5]
//var arr5 = ["b", "a", "c", "f", "e", "d", "i", "g", "h"]
//var arr6 = [6, 5, 4, 3, 2, 1]
//bubbleSort(&arr4) // returns [1, 2, 3, 4, 5, 6]
//bubbleSort(&arr5, by: >) // returns ["i", "h", "g", "f", "e", "d", "c", "b", "a"]
//bubbleSort(&arr6) // returns [1, 2, 3, 4, 5, 6]
