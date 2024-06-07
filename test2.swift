var health = 5

while health > 0 {
    print("Still kicking!")
    health-=1
}
health = 3
repeat {
     print("Still alive!")
    health-=1
} while health > 0

health = 5
switch health {
case 5:
print("Health is 5")
case 3:
print("Health is 3")  
default:
    print("Health is unknown")
}

let mp = 12
let hp = 5

switch (mp, hp) {
case (12, 15):
print("Great!")
case (1...5, 3..<10):
print("Low")  
case (let localMP, let localHP) where localHP+localMP>=7:
print(localMP,localHP)
default:
    print("unknown")
}

let shopItems = ["hrbr": 10, "hbfrhf": 5, "ufru": 30]
let curGold = 16

for (item, price) in shopItems{
    guard curGold>price else{
        print("you cant afford \(item)")
        continue
    }
    print("\(item) is yours for \(price)")

}

func findNearestAlly(level:Int)->String{
    print("Searching for ally above level \(level)")
    return "Argus"
}
var ally = findNearestAlly(level:2)
print(ally)

func attackEnemy(){
    print("Executing default attack")

}
func attackEnemy(damage: Int){
    print("Attacking for \(damage)")
    
}
func attackEnemy(damage: Double, weapon: String)->Bool{
    let attackSuccess=true
    print("Attacking for \(damage) with \(weapon)")
    return attackSuccess
    
}

attackEnemy()
attackEnemy(damage: 2)
let attacked = attackEnemy(damage: 4.5, weapon: "hammer")

func setupArenaMatch() -> Bool? {
    return false
}

func setupArenaMatch(levelName: String) -> (success: Bool, secretItem: String) {
    print("\(levelName) initialised")
    return (true, "Minotaur's Head")
}

var levelDetails = setupArenaMatch(levelName: "Poison Flats")
print(levelDetails.secretItem)

func setupDefaultMatch(levelName: String = "Fire Marshes", opponents: Int = 4){
    print("Match will take place in \(levelName) with \(opponents) enemies")
    
}

setupDefaultMatch()
setupDefaultMatch(levelName:"Roaring Wetlands")

if let initSuccess = setupArenaMatch(){
    print("Level initalised: \(initSuccess)")
}else{
    print("Something went wrong")
}


