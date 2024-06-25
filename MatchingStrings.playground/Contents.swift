import UIKit

let strings = ["aba", "baba", "aba", "xzxb"]
let queries = ["aba", "xzxb", "ab"]

func matchingString(strings: [String], queries: [String]) {
  var matchCounts = [Int]()
  
  for query in queries {
    var count = 0
    
    for string in strings {
      if string == query {
        count += 1
      }
    }
    
    matchCounts.append(count)
  }
  
  print(matchCounts)
}

matchingString(strings: strings, queries: queries)

// MARK: - Using Filter

func matchingStringWithFilter(strings: [String], queries: [String]) {
  var results = [Int]()
  
  for query in queries {
    results.append(strings.filter { $0 == query }.count)
  }
  
  print(results)
}

matchingStringWithFilter(strings: strings, queries: queries)
