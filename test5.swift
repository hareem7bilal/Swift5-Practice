protocol Collectable {
    var name: String {get}
    var price: Int {get set}
    
    init(withName: String, startingPrice: Int)

    func collect()-> Bool
}

extension Collectable {
    var priceIncrease: Int{
        return self.price*10
    }

    init(name: String){
        self.init(withName:name, startingPrice:100)
    }

    func collect() -> Bool {
        print("Default item couldnt be collected")
        return false
    }
}

protocol Usable{
    func use()
}

class Item: Collectable, Usable{
    var name: String
    var price: Int
    
    required init(withName: String, startingPrice: Int){
        self.name=withName
        self.price=startingPrice
    }

    // func collect()-> Bool{
    //     print("Item collected!")
    //     return true
    // }

    func use(){
        print("Item used!")
    }

}

let potion = Item(withName: "High Potion", startingPrice: 35)
let collect=potion.collect()
potion.use()

let antidote = Item(name:"Antidote")
print(antidote.price)

extension String{
    func fancyDebug(){
        print("This string has \(self.count) characters")
    }
}

antidote.name.fancyDebug()

enum DataError: Error{
    case EmptyPath, InvalidPath
}

func loadData(path:String) throws -> Bool{
    guard path.contains("/") else{
        throw DataError.InvalidPath
    }

    guard !path.isEmpty else{
        throw DataError.EmptyPath
    }
    return true
}

let playerDataPath="/example/data.txt"

do{
let _ = try loadData(path: playerDataPath)
print("Data fetch successful")
}catch is DataError{
    print("Invalid or empty path detected")
}catch{
    print("Unknown error detected")
}

if let dataLoaded = try? loadData(path: playerDataPath){
    print("Data fetch went fine: \(dataLoaded)")
}

func propogateDataError() throws {
let _ = try loadData(path: playerDataPath)
}

do {
    let _ = try loadData(path: playerDataPath)
    print("Data fetch successful")
    // Process data...
} catch DataError.EmptyPath {
    print("Empty path detected")
} catch DataError.InvalidPath {
    print("Invalid path detected")
} catch {
    print("Unknown error")
}
