var array = [-8, 0, 5, 4, -1, 6]

let sortedArray = sorted(array) { $0 < $1 }
sortedArray

sort(&array) { $0 < $1 }
array


