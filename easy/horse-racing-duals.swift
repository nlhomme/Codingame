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

let N = Int(readLine()!)!
print("There are", N, "horses", to: &errStream)

// Let's store horses power into an array
var horses: [Int] = []

if N > 0 {
    for i in 0...(N-1) {
        let pi = Int(readLine()!)!
        horses.append(pi)
        print("The horse n°", i, "has a power of", pi, to: &errStream)
    }
}

// Let's sort th horses array
let orderedHorses = horses.sorted()

// Now let's find the minimum difference
var minimum: Int = 1000000000
for j in 1...(orderedHorses.count - 1) {
    if (orderedHorses[j] - orderedHorses[j-1]) < minimum {
        print("The minimum difference is", minimum, to: &errStream)
        minimum = orderedHorses[j] - orderedHorses[j-1]
    }
}


// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)

print(minimum)

