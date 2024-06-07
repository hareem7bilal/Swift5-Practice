func computeBonusDamage(baseDamage: Int) -> Int {
    return baseDamage*4
}

func dealDamage(baseDamage: Int, bonusDamage: (Int)->Int){
    let bonus = bonusDamage(baseDamage)
    print("Base damage: \(baseDamage)\nBonus Damage: \(bonus)")
}

dealDamage(baseDamage: 34, bonusDamage: computeBonusDamage)

var closure:()->()={}
var computeBonusDamage: (Int) -> Int={
    (base: Int)-> Int in return base*4
}
// var computeBonusDamage={
//     base in return base*4
// }
var bonusDamage=computeBonusDamage(25)
var highScores = [213, 5654, 678, 2]
var ascendingSort = highScores.sorted{
    (firstValue, secondValue)-> Bool in return firstValue<secondValue
}

var partyMembers = ["jfbe", "fjrefj", "fejbfb"]
typealias ArrayClosure = ([String])->Void

func activeMembers (completion:ArrayClosure){
    completion(partyMembers)

}

activeMembers {
    members in 
    for name in members{
        print("\(name) is active")
    }
}

func activeMembers (members:[String])->()->Void {
    let completion: ()->Void = {
 for name in members{
        print("\(name) is present!")
    }
    }
return completion
}

var closureReturn = activeMembers(members: partyMembers)
print(closureReturn())

typealias AttackTuple = (name:String, damage: Int, rechargable: Bool)
var sunStrike: AttackTuple = ("Sun Strike", 30, false)

func levelUpAttack(baseAttack: AttackTuple)->AttackTuple{
    let increasedAttack: AttackTuple = (baseAttack.name, baseAttack.damage+10, true)
    return increasedAttack
}

var poweredAttack = levelUpAttack(baseAttack: sunStrike)
print(poweredAttack)

class Adventurer{
    var name: String
    let maxHP: Int
    var specialMove:String?
    var healthLost: Int{
        return maxHP - health
    }
    static var maxActivePlayers = 10
    class var credo: String{
        return "Defend the helpless"
    }

    fileprivate var health: Int
    var Health: Int{
        get {return health}
        set {
            if newValue <= 100 {
                health = newValue
            }
        }


    }


    init(name: String, maxHP: Int){
        self.name = name
        self.maxHP = maxHP
        self.health = maxHP

    }

    convenience init(name: String){
        self.init(name:name, maxHP: 100)
    }

    func printStats(){
        print("Character: \(self.name) Max Health: \(self.health)/\(self.maxHP)")
    }

}

var player1 = Adventurer(name: "Glenda", maxHP: 34)
var player2 = Adventurer(name: "Glenda")
player1.printStats()
player2.printStats()
var defaultPlayer = player1
defaultPlayer.name = "Janice"
player1.printStats()
print(Adventurer.credo)
print(Adventurer.maxActivePlayers)

class Ranger: Adventurer{
    var classAdvantage: String
    override class var credo: String{
        return "To the king!"
    }
    init(name: String, advantage: String){
        self.classAdvantage = advantage
        super.init(name: name, maxHP: 150)
    }
    override func printStats(){
        print("\(self.name): Ranger, Advantage: \(self.classAdvantage)")
    }
}

print(Ranger.credo)
var aragorn = Ranger(name: "Aragorn", advantage: "Stealth")
aragorn.printStats()



