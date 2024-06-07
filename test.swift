// LEARNING OBJECTIVES
// Getting Xcode
// Variables and constants
// Logging and commenting
// Working with strings
// Bools and logical operators
// Working with collections
// Arrays and array methods
// Sets and tuples
// Working with conditional statements and loops
// Working with functions
// Classes in Swift
// Enumerations
// Handling errors

var x: [String] = ["easy", "hh"]
var x1: Array<String> = Array<String>()
x[0]="lala"
x.append("jjg")
x+=["wefef"]
x.insert("hhhr", at: 4)
x.remove(at: 4)
x.reverse()
var y = x.reversed()
x.sort()
var z = x.sorted()
var m:[[String]] = [
    ["fdf", "hhgg"],
    ["ggf", "fdfd"]
]
var h = m[0][1]
var dic : [String: Int] = ["kk": 5, "gg": 7]
var ff = dic["kk"]
dic["kk"] = 9
let keys = [String](dic.keys)
let vals = dic.values
var oldVal = dic.updateValue(30, forKey: "kk")
//dic["gg"] = nil
//var removeVal = dic.removeValue(forKey: "kk")
var q: [String: [String: String]] = ["gg": ["hh": "rrrt"], "ggr": ["yty": "fenr"]]
var gfg = q["ggr"]?["yty"]
var sety: Set<String> = ["asf", "dgwydu", "hssh", "bhaVS", "as"]
var seto: Set<String> = ["as", "dgwyd", "hss", "bhaV"]
sety.insert("sxsa")
sety.remove("asf")
let hmm = sety.contains("hssh")
var setoy = sety.sorted()
var common = sety.union(seto)
var def = sety.symmetricDifference(seto)
var sub = sety.subtracting(seto)
var uu: (String?, Int, Bool) = ("ddw", 6 ,true)
var(asa, effwe, ddf) = uu
var mi: Int = 4
var xi: Int = 2
// if mi>=xi{
//     print("heheheh")
// }else if xi>=50{
//     print("hohooh")

// }else{
//     print("haahah")
// }
var itmga: String? = "jfjfj"
if let item = itmga, let hmmm=uu.0, let ghhh = q["gg"]?["hh"]{
    print("\(hmmm) and \(item) and \(ghhh)")
    for char in item{
   print(char) 
}
}else{
    print("nothing")
}

 for (kee, ggh) in dic{
   print("\(kee), \(ggh)") 
}

for num in 1...10{
   print(num) 
}

for arm in 0..<10{
   print(arm) 
}

for arm in x[...]{
   print(arm) 
}

for arm in x[..<x.count]{
   print(arm) 
}