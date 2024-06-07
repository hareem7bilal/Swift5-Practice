struct Level{
    let levelID: Int
    var levelObjectives: [String]
    var levelDescription: String{
        return "Level ID: \(self.levelID)"
    }

    init(id: Int, objectives: [String]){
        self.levelID=id
        self.levelObjectives = objectives
    }

    func queryObjectives(){
        for objective in self.levelObjectives{
            print("\(objective)")
        }
    }

    mutating func completeObjective(index: Int){
        self.levelObjectives.remove(at: index)
    }
}

var objectives = ["Find the lost ghoul", "Collect gemstones", "Defeat the titan"]
//var level1 = Level(levelID: 1, levelObjectives: objectives)
var level1=Level(id: 1, objectives: objectives)
var defaultLevel = level1
level1.completeObjective(index:1)
level1.queryObjectives()
defaultLevel.queryObjectives()

struct Item{
    var description: String
    var prevOwner: Owner?
}

struct Owner{
    var name: String

    func returnOwnerInfo()-> String{
        return "\(self.name) is the current owner!"

    }
}

var questDirectory = [
   "Fetch Gemstones" : [
    "Objective": "Retrieve 5 gems",
    "Secret": "Win with 50% health left"
   ],
    "Defeat Big Boss" : [
    "Objective": "Beat him up",
    "Secret": "Win with 50% health left"
   ]
]

var rareDagger = Item(description:"A unique dagger of unknown origin", prevOwner: nil)
var daggerOwner = Owner(name: "The Great Thief")
rareDagger.prevOwner = daggerOwner
rareDagger.prevOwner?.name = "The Old Merchant"

if let owner = rareDagger.prevOwner?.name{
    print("This item used to be owned by \(owner)")
}else{
    print("Looks like this items history is unknown")

}

if let ownerInfo = rareDagger.prevOwner?.returnOwnerInfo(){
    print("Owner found! \(ownerInfo)")
}else{
    print("No owner in our records!")
}

if let gemstoneObjective = questDirectory["Fetch Gemstones"]?["Objective"]{
    print(gemstoneObjective)
}

// enum GameState{
//     case Completed
//     case Initializing 
//     case LoadingData
// }

enum GameState{
    case Completed, Initializing, LoadingData, Restarting
}

var currentState = GameState.Completed
print("Current state is \(currentState)")

switch currentState {
case .Completed:
    print("Completed processing all tasks.")
case .Initializing:
    print("Still initializing data.")
case .LoadingData:
    print("Player data correctly unpacked.")
//@unknown 
default:
    print("Unknown game state detected.")
}

enum NonPlayableCharacters: String{
    case Villager = "Not very useful", Blacksmith = "One per village, will have quest info", Merchant = "Will make you cool stuff"
}
 var blacksmith = NonPlayableCharacters.Blacksmith
 print(blacksmith.rawValue)

enum PlayerState{
    case Alive, KO(level: Int), Unknown(debugError: String), X

    func evaluateCase(){
        switch self {
        case .Alive:
        print("Still kicking!")
        case .KO(let restartLevel):
        print("Sorry, back to level \(restartLevel) for you")
        case .Unknown(let msg):
        print(msg)
        default:
        print("Unknown state encountered")
            
        }
    }
}

PlayerState.KO(level: 1).evaluateCase()
