var fibonacci = [1, 1, 2, 3, 4, 4, 4, 5, 8, 13]
//let splitFib = split(fibonacci, { $0 % 4 == 0 })  // syntax no longer valid
let splitFib = split(fibonacci, maxSplit: 10, allowEmptySlices: false, isSeparator: { $0 % 4 == 0 })
splitFib
