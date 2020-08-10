//
//  main.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/2.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

print("Hello, World!")

let numbers = [1,2,3,4,5,6,7,8,9]


do {
    let data = Data()
    try data.write(to: URL.init(fileURLWithPath: "ddddd"))
}
catch let error {
    print(error.localizedDescription)
}

func squareOf(x: Int) -> Int {
    return x * x
}



let point = (3,2)
switch point {
case let(x,y):
    //值绑定模式匹配到的X值：3,Y值：2
    print("值绑定模式匹配到的X值：\(x),Y值：\(y)")
}


// MARK: 哈希表


var hashTable = HashTable<String, String>(capacity: 5)

hashTable["firstName"] =  "steve"
let x = hashTable["firstName"]
print(x as Any)


var point1 = CGPoint(x: 10, y: 10)
var point2 = CGPoint(x: 20, y: 10)

let ingredients: Set = ["cocoa beans", "sugar", "cocoa butter", "salt"]
if ingredients.isSuperset(of: ["sugar", "salt"]) {         print("Whatever it is, it's bound to be delicious!")
}
// Prints "Whatever it is, it's bound to be delicious!"




let aa:[Int] = [ 7, 92, 23, 9, -1, 0, 11, 6 ]
let k = 4

//let res = kthLargest(a: aa, k: k)
//print("res:\(String(describing: res))")

//let resV = randomizedSelect(aa, order: k)
//print("resV:\(String(describing: resV))")



// MARK: 快速排序
var list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ,33]
print("list:\(list)")

//print("resV:\(quicksort2(list))")

quicksortHoare2(&list, low: 0, high: list.count-1)
print("resV:\(list)")



// MARK: 二分查找
let numbers1 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

//print("resV:\(String(describing: binarySearch(numbers1, key: 413, range: 0 ..< numbers1.count)))")
print("resV:\(String(describing: binarySearch(numbers1, key: 43)))")


var title: String {
    get {
        return "1"
    }
    set {
        print(newValue)
    }
}
title = "bb"
print("\(title)")


func createIncrementer(forIncrese amount:Int) -> ()->Int {
    //定义嵌套函数外部的变量
    var total = 0
    //定义一个嵌套函数
    func increase()->Int {
        total += amount
        return total
    }
    //返回此嵌套函数
    return increase
}

var increaseByTen = createIncrementer(forIncrese: 10)

print(increaseByTen())


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String , _ s2: String) -> Bool {
    return s1 > s2
}

//let newArray = names.sorted(by: {(s1:String,s2:String)->Bool in
//    return s1 > s2
//})

let newArray = names.sorted(by: {s1, s2 in s1 > s2})

print(newArray)


//class escapeClosure: NSObject {
//    //声明一个闭包类型的数组
//    var closureArray : [(String)->Void] = []
//    override init() {
//        super.init()
//
//    }
//    //模仿闭包逃逸:写完 closureArray.append编译器检测到时逃逸闭包提示添加@escaping
//    func escapeClosures(title:String,handle:@escaping (String)->Void){
//        closureArray.append(handle)
//    }
//    //类方法
//    static func startEscape(){
//       let escapeObject = escapeClosure()
//       escapeObject.escapeClosures(title: "场景1") { (s1) in
//            print("场景1"+s1)//!< 场景1逃逸闭包1被调用了
//        }
//        escapeObject.escapeClosures(title: "场景2") { (s1) in
//            print("场景2"+s1)//!< 场景2逃逸闭包2被调用了
//        }
//        //使用迭代器进行下标和元素的同时遍历
//        for (index,obj) in  escapeObject.closureArray.enumerated() {
//            obj("逃逸闭包\(index+1)被调用了")
//        }
//    }
//}
////调用
//escapeClosure.startEscape()//!< 场景1逃逸闭包1被调用了 场景2逃逸闭包2被调用了



let list1 = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
print(insterionSort3(list1))


print(insertionSort4(list1, >))

//print(insertionSort4(list1) { $0.priority < $1.priority })


func text() {
    for i in 1 ... 5 {
        print(i)
    }
}


text()





class Animal {
    var name: String
    required init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var foot: Int
    //在重写父类必要构造器的时候不需要加override
    required init(name: String) {
        foot = 4
        super.init(name: name)
    }
}

let aaa = Dog(name: "dog")
print(aaa.foot)

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}


let adc = 20
var apc = 0;
var result = ""

switch adc {
case 0...10:
    result = "0...10"
case 11..<20:
    result = "11..<20"
case 20...30:
    result = "20...30"
default:
    result = "beyond of range"
}
print(result)//!< 20...30


let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x==y:
    print("匹配到x与y相同的情况")
case let(x,y) where x == -y:
    print("匹配到x与y为相反数的情况")//!<匹配到x与y为相反数的情况
default:
    print("没有匹配的结果")
}


struct Stack {
    var items = [Int]()
    mutating func push(_ item:Int){
        items.append(item)
    }
    mutating func pop(_ item:Int) -> Int {
        return items.removeLast()
    }
}
//调用
var stack_int = Stack()
stack_int.push(7)
stack_int.push(3)
stack_int.push(2)
print(stack_int)//Stack(items: [7, 3, 2])


func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
        
    }
    return nil
}


//定义协议使用类型关联
protocol Container {
    associatedtype Item
    mutating func append(_ item : Item)
    var count : Int{get}
    subscript(i:Int)->Item{get}
    
}
//定义整型Stack类型
struct IntStack : Container {
    var items = [Int]()
    mutating func push(_ item:Int){
        items.append(item)
    }
    mutating func pop(_ item:Int) -> Int {
        return items.removeLast()
    }
    //实现协议时，需要明确关联类型的实际类型
    typealias Item = Int //!< ①
    
    mutating func append(_ item: Item) {//!< ①若不存在，此处可直接 Int
        push(item)
    }
    
    var count: Int {
        items.count
    }
    subscript(i: Int) -> Int {
        items[i]
    }
}



struct Counter {
    // 这个变量现在得声明成 var
    var count: Int
    
    init(count: Int = 0) {
        self.count = count
    }
    
    // 使用 mutating 关键字的做法
    mutating func increment() {
        count += 1
    }
}



struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}


class MOCalculate: NSObject {
    class func getRandomNum() -> NSInteger {
        
        let randomNum = NSInteger(arc4random()%365) + 1;
        print("randomNum = ",randomNum,"?");
        
        return randomNum;
    }
    ///static也可以声明类方法 但是static和class只能用一个
    static func getRandomNum1() -> NSInteger {
        
        let randomNum = NSInteger(arc4random()%365) + 1;
        print("randomNum = ",randomNum,"?");
        
        return randomNum;
    }
}

let resI = MOCalculate.getRandomNum()

print(resI)


//enum VendingMachineError : Error {
//    case InvalidGoods//!< 商品无效
//    case StockInsufficient//!< 库存不足
//    case CoinInsufficient(coinNeeded:Int)
//}
//
//struct Item {
//    var price : Int
//    var count : Int
//}
//
//class VendingMachine {
//    var coins : Int = 0
//    var goods : [String : Item] = [
//        "果粒橙": Item.init(price: 3, count: 2),
//        "红牛": Item.init(price: 5, count: 4),
//        "雪碧": Item.init(price: 4, count: 6)]
//
//    func sell(itemName name : String , itemCount count : Int) throws -> Void {
//
//        guard let item = goods[name] else {
//            throw VendingMachineError.InvalidGoods
//        }
//        guard item.count > 0 && item.count > count else {
//            throw VendingMachineError.StockInsufficient
//        }
//        guard item.price * count <= coins else {
//            throw VendingMachineError.CoinInsufficient(coinNeeded: item.price * count - coins)
//        }
//        //可以成功购买
//        coins -= item.price * count
//        goods[name] = Item.init(price: item.price, count: item.count - count)
//    }
//}
//
//
//
//class Customer {
//    var itemName : String
//    var itemCount : Int
//    var vendingMachine : VendingMachine
//    //使用`try`关键字调用抛出函数，以传播错误
//    //可抛出的初始化方法
//    init(itemName:String,itemCount:Int,vendingMachine:VendingMachine) throws {
//        try vendingMachine.sell(itemName: itemName, itemCount: itemCount)
//        self.itemName = itemName
//        self.itemCount = itemCount
//        self.vendingMachine = vendingMachine
//    }
//    //可抛出函数
//    func buy() throws -> Void {
//        try vendingMachine.sell(itemName: itemName, itemCount: itemCount)
//    }
//}
//
//
//



enum VendingMachineError: Error {
    case InvalidGoods
    case StockInsufficient
    case CoinInsufficient(coinNeeded: Int)
    
}

struct Item {
    var price: Int
    var count:  Int
}

class VendingMachine {
    var coins : Int = 0
    var goods : [String : Item] = [
        "果粒橙": Item.init(price: 3, count: 2),
        "红牛": Item.init(price: 5, count: 4),
        "雪碧": Item.init(price: 4, count: 6)]
    
    func sell(itemName name : String, itemCount count: Int) throws -> Void {
        guard let item = goods[name] else {
            throw VendingMachineError.InvalidGoods
        }
        guard  item.count > 0 && item.count > count else {
            throw VendingMachineError.StockInsufficient
        }
        
    }
}

//视频播放  图片 PDF    白板书写


//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//        self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}


//var timer = Timer(timeInterval: 1.0, repeats: true, block: { [weak self] (timer) in
//    self?.timerFunc()
//})

let timeDate = Date.init(timeIntervalSinceNow: 79)


let timer = Timer.init(fire: timeDate, interval: 2, repeats: true) { (Timer) in
    print("设置开始时间定时器")
}

RunLoop.current.add(timer, forMode: RunLoop.Mode.common)

timer.fire()

let id = \Int.self
var x1 = 1
print(id)

let str = ##"My dog said "woof"#gooddog"##
let answer = 111
let multiline = #"""
The answer to life,
the universe,
and everything is \#(answer).
"""#

print(multiline)


let arr = [1, 2, 34, 5, 6, 7, 8, 12, 45, 6, 9]


let filter = arr.filter({$0 > 10})
print(filter)

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("一英寸是 \(oneInch) 米")
// Prints "一英寸是 0.0254 米"
let threeFeet = 3.ft
print("三英尺是 \(threeFeet) 米")
// Prints "三英尺是 0.914399970739201 米"
let aMarathon = 42.km + 195.m
print("马拉松长 \(aMarathon) 米")
// Prints "马拉松长 42195.0 米"


struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init(origi:Point,siz:Size) {
        origin = origi
        size = siz
    }
}
extension Rect {
    init(center:Point,size:Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origi: Point(x: originX, y: originY), siz: size)
        //! `Rect`原始定义中未自定义初始化方法则此处应该使用默认初始化方法或者成员初始化方法:`self.init(origin: Point(x: originX, y: originY), size: size)`
    }
}

var rect1 = Rect.init(center:  Point.init(x: 1, y: 2), size: Size.init(width: 4.0,height: 5.0))


extension Int {
    subscript(digitIndex:Int) -> Int {
        var baseNum = 1
        for _ in 0 ..< digitIndex {
            baseNum *= 10
        }
        assert(baseNum < self, "整数索引越界")
        return (self/baseNum)%10
    }
}
print(123456[5])

swiftThreadDemo.GCDTest1()
let swiftTD = swiftThreadDemo()
swiftTD.threadText()





//struct Shop {
//    let name: String
//    let category: String
//}
//
//let shops = [Shop(name: "iPhone 11", category: "phone"),
//             Shop(name: "iPhone XR", category: "phone"),
//             Shop(name: "Redmi note8", category: "phone"),
//             Shop(name: "卫龙", category: "food"),
//             Shop(name: "老干妈", category: "food")]
//
//let shopSections = Dictionary(grouping: shops) { $0.category }
//
//
//let shopSectionss = Dictionary(grouping: shops) {(shop) -> String in
//    return shop.category
//}
//print(shopSectionss)


struct Company: Hashable {
    let name: String
}

struct Shop {
    let name: String
    let category: String
    let company: Company
    
}

let apple = Company(name: "苹果")
let littleMi = Company(name: "小米")
let wl = Company(name: "卫龙")
let lgm = Company(name: "老干妈")


let shops = [Shop(name: "iPhone 11", category: "phone", company: apple),
             Shop(name: "iPhone XR", category: "phone", company: apple),
             Shop(name: "Redmi note8", category: "phone", company: littleMi),
             Shop(name: "卫龙", category: "food", company: wl),
             Shop(name: "薯条", category: "food", company: lgm)]



let shopSections = Dictionary(grouping: shops) {(shop) -> Company in
    return shop.company
}


let nums1 = [1,2,5,3,1,2,2], nums2 = [5,2,2,3]
print(interSect2(nums1, nums2))

let abc:Int = -21474
print(reverse(abc))


let aa3:[Int] = [ 7, 92, 23, 9, -1, 0, 11, 6 ]
let k3 = 4


let resV = randomizedSelect3(aa3, order: k3)
print("resV:\(String(describing: resV))")


let longStrArray = ["flower","flow","flight"]
//    ["dog","racecar","car","flower","flow","flight"]
//
print(longestCommonPrefix2(longStrArray))





print(compareVersion1("1.11.0", "1.19"))

//print(isPalindrome(121))

print(isPalindRome(1001))



let nums = [2, 7, 11, 15]
let target = 9
print(twoSumNew1(nums, target: target))


let searchNums = [1,3,5,6]
let searchTarget = 7
print(searchInsert(searchNums, searchTarget))

var count = 10,isAdd = true

if isAdd {
    count = count + 1
} else {
    count = count - 2
}
let resStr = "\(count)"
print(resStr)


//let  node1 = ListNode(1)
//let  node2 = ListNode(1)
//let  node3 = ListNode(2)
//let  node4 = ListNode(3)
//
//let  node5 = ListNode(5)
//let  node6 = ListNode(4)
//let  node7 = ListNode(4)
//
//
//
//node1.next = node2
//node2.next = node3
//node3.next = node4
//node4.next = node5
//node5.next = node6
//node6.next = node7
//
//
//var res = deleteDuplicates(node1)
//print("deleteDuplicates1 start")
//while res.val != 0 {
//    print("deleteDuplicates1:\(res.val)")
//    res = res.next ?? ListNode(0)
//}
//print()



var buffer = RingBuffer<Int>(count: 5)

buffer.write(123)
buffer.write(456)
buffer.write(789)
buffer.write(666)

buffer.read()   // 123
buffer.read()   // 456
buffer.read()   // 789

buffer.write(333)
buffer.write(555)

buffer.read()   // 666
buffer.read()   // 333
buffer.read()   // 555
buffer.read()   // nil


print("---------------------------------")

var a = 10
incrementor(&a)
print("\(a)")

var b = 10
incrementor1(num: &b)
print(b)



var test:Int = 10
print(type(of: test))
print(Int.self)
test = withUnsafeMutablePointer(to: &test, {(ptr: UnsafeMutablePointer<Int>) -> Int in
    ptr.pointee += 1
    return ptr.pointee
})

text()
print(test)



func insert(_ array:inout [Int]) -> [Int] {
    var a = array
    for x in 1 ..< a.count {
        let y = x
        while y > 0 && a[y] < a[y - 1] {
            a.swapAt(y - 1, y)
        }
    }
    return a
}

func insert1(_ array:inout [Int]) -> [Int] {
    var a = array
    for x in 1 ..< a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] =  a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}
var listinsert = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insert1(&listinsert)
print(listinsert)


print("-----------------------------------------------------")
// leaf nodes
let node5 = BinaryTree.node(.empty, "5", .empty)
let nodeA = BinaryTree.node(.empty, "a", .empty)
let node10 = BinaryTree.node(.empty, "10", .empty)
let node4 = BinaryTree.node(.empty, "4", .empty)
let node3 = BinaryTree.node(.empty, "3", .empty)
let nodeB = BinaryTree.node(.empty, "b", .empty)

// intermediate nodes on the left
let Aminus10 = BinaryTree.node(nodeA, "-", node10)
let timesLeft = BinaryTree.node(node5, "*", Aminus10)

// intermediate nodes on the right
let minus4 = BinaryTree.node(.empty, "-", node4)
let divide3andB = BinaryTree.node(node3, "/", nodeB)
let timesRight = BinaryTree.node(minus4, "*", divide3andB)

// root node
let tree = BinaryTree.node(timesLeft, "+", timesRight)
tree.traverseInOrder(process: { (str) in
    print(str)
})


//var str111 = "GDAFEMHZ"
//var inorder = UnsafeMutableBufferPointer<String>(start: &str111, count: str111.count)
//
//if let basePtr = inorder.baseAddress {
//    print(basePtr.pointee)
//    print(basePtr.)
//}
print("--------------------26----------------------")

var nums26 = [0,0,1,1,1,2,2,3,3,4]
print(nums26)
let res26 = removeDuplicates1(&nums26)
print(nums26)
print("res26:\(res26)")

print("--------------------27----------------------")


var nums27 = [0,1,2,2,3,0,4,2]
let val27 = 2

let res27 = removeElement(nums: &nums27, val: 2)
print(nums27)
print("res27:\(res27)")


print("--------------------88----------------------")
var nums188 = [1,2,3,0,0,0]
var nums288 = [2,5,6]
merge(&nums188, 3,nums288,3)
print(nums188)


print("--------------------100----------------------")
//var tree100L = TreeNode100(2)
//var tree100R = TreeNode100(3)
//var tree100z = TreeNode100(1)
//var tree100 = TreeNode100(1, tree100L, tree100R)
//var tree1001 = TreeNode100(1, tree100L, tree100R)
//
//
//print(isSameTree1(tree100, tree1001))

var tree107_1 = TreeNode(3)
var tree107_2 = TreeNode(9)
var tree107_3 = TreeNode(20)
var tree107_4 = TreeNode(15)
var tree107_5 = TreeNode(7)

tree107_1.left = tree107_2
tree107_1.right = tree107_3
tree107_3.left = tree107_4
tree107_3.right = tree107_5

let s107 = solution107()
print(s107.levelOrderBottom(tree107_1))

print("--------------------108----------------------")
let arr108 = [-10,-3,0,5,9]
let r = solution108().sortedArrayToBST(arr108)

var trees1 = TreeNode(1)
var trees2 = TreeNode(2)
var trees3 = TreeNode(3)
var trees4 = TreeNode(4)
var trees5 = TreeNode(5)
var trees6 = TreeNode(6)
var trees7 = TreeNode(7)
var trees8 = TreeNode(8)

trees1.left = trees2
trees1.right = trees3
trees2.left = trees4
trees4.right = trees6
trees6.left = trees7
trees6.right = trees8
trees3.right = trees5

treeSolution().postorderTraversal(trees1)


//func fooGuard(x: Int?) {
//    guard let a = x, a > 0 else {
//        // 变量不符合条件判断时，执行下面代码
//        return
//    }
//    print(x)
//    // 使用x
//    x!.description
//}
//fooGuard(x: -3)


var arr136 = [4,1,2,1,2]
print("136:\(solution136().singleNumber(arr136))")


let str125 = "A man, a plan, a canal: Panama"
print("125:\(solution125().isaaPalindrome(str125))")

var trees11 = TreeNode(3)
var trees12 = TreeNode(9)
var trees13 = TreeNode(20)
var trees14 = TreeNode(15)
var trees15 = TreeNode(7)


trees11.left = trees12
trees11.right = trees13
trees13.left = trees14
trees13.right = trees15

print("111:\(solution111().minDepth(trees11))")



extension Optional where Wrapped == String {
    var safeValue: String {
        return self ?? ""
    }
}

var name:String? = "Swift"
print(name ?? "")

name = nil

//print(name!)

print(name.safeValue)
print("--------------------58----------------------")
let str58 = "Hello World"
print("58:\(solution58().lengthOfLastWord(str58))")

print("--------------------696----------------------")

let str696 = "00110011"
print("696:\(solution696().countBinarySubstrings(str696))")

let letters = str696.map{String($0)}
print(letters)
print(type(of: letters))


print("--------------------67----------------------")
let a67 = "1010"
let b67 = "1011"
print("67:\(solution67().addBinary(a67, b67))")
