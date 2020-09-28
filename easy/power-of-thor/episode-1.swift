import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

let inputs = (readLine()!).split(separator: " ").map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
let initialTx = Int(inputs[2])! // Thor's starting X position
let initialTy = Int(inputs[3])! // Thor's starting Y position

// Current Thor location initialisation
var positionX = initialTx
var positionY = initialTy

// game loop
while true {

// Direction Y and X initalisation
var directionY = ""
var directionX = ""
var directionFinale = ""

    let remainingTurns = Int(readLine()!)! // The remaining amount of turns Thor can move. Do not remove this line.

    print("Tours restants: \(remainingTurns)", to: &errStream)
    
    // Y axis //
    // If light is closer to 0 on Y axis
    if lightY < positionY  {
        //Then Thor must go North
        directionY = "N"
        // Update Thor location on Y axis
        positionY -= 1
      // Else if Thor is closer to 0 on Y axis
    } else if lightY > positionY {
        // Then Thor must go South
        directionY = "S"
        positionY += 1
      // If Thor and Light are on the same axis value
      // Thor doesn't need to move
    } else {
        directionY = ""
    }
    
    //X Axis
    if lightX < positionX {
        directionX = "W"
        positionX -= 1
    } else if lightX > positionX {
        directionX = "E"
        positionX += 1
    } else {
        directionX = ""
    }

    directionFinale = (directionY + directionX)

    // A single line providing the move to be made: N NE E SE S SW W or NW
    print("\(directionFinale)");
}

