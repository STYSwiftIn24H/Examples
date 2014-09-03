struct CubeANum {
    subscript(num: Int) -> Int {
        return num * num * num
    }
}
let cubeANum = CubeANum()
cubeANum[2]
cubeANum[5]
