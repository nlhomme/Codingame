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
var row1 = [Int]()
var row2 = [Int]()
var result = 999

let n = Int(readLine()!)! // the number of temperatures to analyse
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let t = Int(i)!

    // Store temperatures to an array
    temperatureArray.append(t)

}

if n == 0 {
    result = 0
}

temperatureArray.forEach {

    print("La difference entre 0 et \($0) est \(abs(0-$0))", to: &errStream)

    if abs(0-$0) < abs(result) {
        result = $0
        print("result = \($0)", to: &errStream)
    }
}


print(result);

