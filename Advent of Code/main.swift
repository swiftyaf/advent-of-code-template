//
//  main.swift
//  No rights reserved.
//

import Foundation

func main() {
    let fileUrl = URL(fileURLWithPath: "./aoc-input")
    guard let inputString = try? String(contentsOf: fileUrl, encoding: .utf8) else { fatalError("Invalid input") }
    
    let lines = inputString.components(separatedBy: "\n")
        .filter { !$0.isEmpty }
    
    // Sample algorithm
    lines
        .map {
            $0.components(separatedBy: ", ")
                .map { Int($0)! }
                .sorted()
                .map { String($0) }
        }
        .map {
            $0.joined(separator: ", ")
        }
        .forEach { print($0) }
}

main()
