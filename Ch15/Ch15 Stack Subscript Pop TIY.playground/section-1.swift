struct Paper {
    let student: String
    let topic: String
}

class StackOfPapers {
    var papers = [Paper]()
    
    func push(item: Paper) {
        papers.append(item)
    }
    
    func pop() -> Paper {
        return papers.removeLast()
    }
    
    subscript(number: Int) -> [Paper] {
        var tempPapers = [Paper]()
        for _ in 0..<number {
            tempPapers.append(self.pop())
        }
        return tempPapers
    }
    
    var count: Int {
        return papers.count
    }
}

let stack = StackOfPapers()
stack.push(Paper(student: "Susie", topic: "Sea Creatures"))
stack.push(Paper(student: "Bobby", topic: "Music"))
stack.push(Paper(student: "Madeline", topic: "Jungle Cats"))
stack.push(Paper(student: "Blake", topic: "Soccer"))
stack.push(Paper(student: "Cole", topic: "Bicycling"))
stack.push(Paper(student: "Marion", topic: "Boating"))

stack.count

stack[3]

stack.count

stack[3]

stack.count
