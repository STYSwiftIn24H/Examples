var fibonacci = [1, 1, 2, 3, 5, 8, 13]

let range = Range(start: 2, end: 5)
let innerSlice = fibonacci[range]

let innerArrayFromSlice = [Int](innerSlice) // or Array(innerSlice)
