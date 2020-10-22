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

var temperatureArray = [[Int]]()
var row1 = [Int]()
var row2 = [Int]()
var result = 999

let n = Int(readLine()!)! // the number of temperatures to analyse
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let t = Int(i)!

    // Store temperatures to an array
    row1.append(t)

    // Store difference between temperatures and 0 to an array
    row2.append(abs(t-0))
}

temperatureArray.append(row1)
temperatureArray.append(row2)


for value in row1 {
    if abs(value-0) < result {
        result = value
    }
}

print(result);

