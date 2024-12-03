import UIKit

//==========>> A class of computer =======>>
/*
 Create base class Computer with common properties and methods.
 */

class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func displaySpecs () {
         print("brand: \(brand)\nProcessor: \(processor)\nRam: \(ram)GB")
        
    }
}

/*
 Subclass Laptop that inherit from Computer and add unique properties and methods.
 A function to display detailed specifications of each computer type.
 */

class Laptop: Computer {
    private var isTouchScreen: Bool
    
    init(isTouchScreen: Bool,brand: String, processor: String, ram: Int) {
        self.isTouchScreen = isTouchScreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    func laptopDetails() {
        print("Laptop Specs:")
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("IsTouchScreen: \(isTouchScreen ? "Yes" : "No")\n")
    }
}

/* ===========>> Desktop ========>>
 Desktop:

 Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).

 Override the displaySpecs() method to include this property.
 */

class Desktop: Computer {
    private var hasDedicatedGPU: Bool
    
    init(hasDedicatedGPU: Bool, brand: String, processor: String, ram: Int) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    func desktopDetails() {
        print("Desktop Specs:")
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("HasDedicatedGPU: \(hasDedicatedGPU ? "Yes" : "No")\n")
    }
}

// ==============>> Server =============>>
/*
 Server:

 Add an additional property rackUnits (an Int to specify the server's size in rack units).

 Override the displaySpecs() method to include this property.
 */

class Server: Computer {
    private var rackUnits: Int
    
    init(rackUnits: Int,brand: String, processor: String, ram: Int ){
        self.rackUnits = rackUnits
        super.init(brand: brand, processor: processor, ram: ram)
        
    }
    
    func serverDetails() {
        print("Server Specs:")
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("RackUnits: \(rackUnits)")
    }
}

//============>> Test/ Output ============>>

let myLaptop: Laptop = Laptop( isTouchScreen: false, brand: "Apple", processor: "M1", ram: 16)
myLaptop.laptopDetails()
myLaptop.displaySpecs()

let myDesktop: Desktop = Desktop(hasDedicatedGPU: true, brand: "Dell", processor: "Intel i7", ram: 32)
myDesktop.desktopDetails()
myDesktop.displaySpecs()

let myserver: Server = Server(rackUnits: 4, brand: "HP", processor: "Xeon", ram: 64)
myserver.serverDetails()
myserver.displaySpecs()
