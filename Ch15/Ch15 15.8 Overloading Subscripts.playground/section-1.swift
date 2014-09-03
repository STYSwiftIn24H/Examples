class CubeANum {
    subscript(num: Int) -> Int {
        return num * num * num
    }
    subscript(num: Double) -> Double {
        return num * num * num
    }
}
let cubeANum = CubeANum()
cubeANum[2.5]
cubeANum[2]

