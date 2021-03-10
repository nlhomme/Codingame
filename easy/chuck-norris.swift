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

let MESSAGE = readLine()!
print("MESSAGE equals", MESSAGE, to: &errStream)

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)

// for each character in MESSAGE
for character in MESSAGE {
    print(character, to: &errStream)
        // Getting the ascci code (type: otional)
        let asciiLetter = character.asciiValue
        // Getting the ascii code (let's decapsulate the optional)
        if let asciiLetter = asciiLetter {
            print(asciiLetter, to: &errStream)
            // Converting the ascii code to binary
            let binaryLetter = String(asciiLetter, radix: 2)
            print(binaryLetter, to: &errStream)
        }
    
}

print("answer")
