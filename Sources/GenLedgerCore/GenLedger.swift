import Foundation
import SwiftCSV


public final class GenLedger {
  private let arguments: [String]
  
  public init(arguments: [String] = CommandLine.arguments) {
    self.arguments = arguments
  }
  
  public func run() throws {
    let csvFile: CSV = try CSV<Named>(url: URL(fileURLWithPath: "Assets/Export/Expenses-Table 1.csv"))
    
    try csvFile.enumerateAsDict { row in 
      //let ex = Expense(row)
        let expense = Expense(row: row)
        
        print(expense.description)
    }
  }
}
