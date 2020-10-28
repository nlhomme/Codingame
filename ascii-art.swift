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

let L = Int(readLine()!)!
print("L vaut \(L)", to: &errStream)

let H = Int(readLine()!)!
print("H vaut \(H)", to: &errStream)

let T = readLine()!
print("T vaut \(T)", to: &errStream)

if H > 0 {
    for i in 0...(H-1) {
        let ROW = readLine()!
        print("ROW vaut \(ROW)", to: &errStream)

        let start = ROW.index(ROW.startIndex, offsetBy: 2)
        let end = ROW.index(ROW.endIndex, offsetBy: -4)
        let range = ((L * H)-4)..<(L * H)
        let subStr = ROW[range] 
        print("\(subStr)", to: &errStream)
    }
}



// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)


print("pouet");

