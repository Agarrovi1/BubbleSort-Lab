import Foundation

// Question One

// Implement bubble sort that accepts a closure about how to sort elements

func bubbleSort<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var arr = arr
    var madeSwap = false
    repeat {
        madeSwap = false
        for i in 0..<arr.count - 1 {
            if !isSorted(arr[i],arr[i+1]) && arr[i] != arr[i+1] {
                arr.swapAt(i, i+1)
                madeSwap = true
            }
        }
    } while madeSwap
    return arr
}

// Question Two

// Sort an array of Ints without changing the position of any negative numbers
// https://www.geeksforgeeks.org/sort-an-array-without-changing-position-of-negative-numbers/

func bubbleSortWithoutMovingNegatives<T: SignedInteger>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var arr = arr
    var madeSwap = false
    repeat {
        madeSwap = false
        print(arr)
        for i in 0...arr.count - 1 {
            if arr[i] < 0 {
                continue
            }
            for j in i..<arr.count - 1 {
                if arr[j+1] < 0 {
                    continue
                } else if !isSorted(arr[i],arr[j+1]) && arr[i] != arr[j+1] {
                    arr.swapAt(i, j+1)
                    madeSwap = true
                }
                break
            }
            
        }
    } while madeSwap
    return arr
}

// Question Three

// Implement Cocktail sort
// https://www.geeksforgeeks.org/cocktail-sort/

func cocktailSort<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var arr = arr
    var madeSwap = false
    repeat {
        madeSwap = false
        var reversedArr = Array(arr.reversed())
        for i in 0..<arr.count - 1 {
            if !isSorted(arr[i],arr[i+1]) && arr[i] != arr[i+1] {
                arr.swapAt(i, i+1)
                madeSwap = true
                reversedArr = arr.reversed()
            }
        }
        for i in 0..<reversedArr.count - 1 {
            if isSorted(reversedArr[i],reversedArr[i+1]) && reversedArr[i] != reversedArr[i+1] {
                reversedArr.swapAt(i, i+1)
                madeSwap = true
                arr = reversedArr.reversed()
            }
        }
    } while madeSwap
    return arr
}

// Question Four

// Implement bubble sort on a linked list

func bubbleSort<T: Comparable>(list: LinkedList<T>, by isSorted: (T, T) -> Bool) -> LinkedList<T> {
    return list
}
