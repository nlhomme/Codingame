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

var temperatureArray = [Int]()
var candidate = 999
var result = 999

let n = Int(readLine()!)! // the number of temperatures to analyse
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let t = Int(i)!

    // Storing temperatures to an array
    temperatureArray.append(t)
}

// If no temperature to analyse
// Then nothing to do
if n == 0 {
    candidate = 0
}

// For each temperature in our array
temperatureArray.forEach {

    print("The difference between 0 and \($0) is \(abs(0-$0))", to: &errStream)

    // If two array entries 
    // (one postive and one negative)
    // are both close to zero then the postitive entry wins
    if abs(0-$0) == abs(candidate){
        candidate = abs($0)
        print("candidate = \($0)", to: &errStream)
    }

    // If the array entry is smaller than the candidate
    // And the array entry and the candidate are both close to zero then the postitive entry wins
    if abs(0-$0) < abs(candidate) {
        if abs(0-$0) == abs(candidate){
            candidate = abs($0)
            print("candidate = \($0)", to: &errStream)
        }
            // Else the array entry wins
            candidate = $0
            print("candidate = \($0)", to: &errStream)
        }
}

// The candidate become the final result
result = candidate

print(result);

