import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

let surfaceN = Int(readLine()!)! // the number of points used to draw the surface of Mars.
if surfaceN > 0 {
    for i in 0...(surfaceN-1) {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let landX = Int(inputs[0])! // X coordinate of a surface point. (0 to 6999)
        let landY = Int(inputs[1])! // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    }
}

// game loop
while true {
    let inputs = (readLine()!).split(separator: " ").map(String.init)
    let X = Int(inputs[0])!
    let Y = Int(inputs[1])!
    let hSpeed = Int(inputs[2])! // the horizontal speed (in m/s), can be negative.
    let vSpeed = Int(inputs[3])! // the vertical speed (in m/s), can be negative.
    let fuel = Int(inputs[4])! // the quantity of remaining fuel in liters.
    let rotate = Int(inputs[5])! // the rotation angle in degrees (-90 to 90).
    let power = Int(inputs[6])! // the thrust power (0 to 4).

    # The newPower value is sent to the lander
    # So we have to initiate it at the same value than power 
    var newPower = power

    // Write an action using print("message...")
    // To debug: print("Debug messages...", to: &errStream)


    # If the vertical speed is superior than 41m/s, the lander will crash
    # So we increase the power to slow it down
    if vSpeed < -41, power < 4 {
        newPower += 1
    }

    // 2 integers: rotate power. rotate is the desired rotation angle (should be 0 for level 1), power is the desired thrust power (0 to 4).
    print("\(rotate) \(newPower)");
}


