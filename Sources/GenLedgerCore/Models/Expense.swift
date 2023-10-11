import Foundation

struct Expense {
  let date: Date
  let description: String
  let user: String
  let amount: Decimal
  let currency: Currency
    
init(row: [String: String]) {   
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yy/MM/dd"
    self.description = row["Description"]!
    self.date = dateFormatter.date(from: row["Date"]!)!
    self.user = row["User"]!
    self.amount = Decimal(string: row["Expense Currency Gross Value"]!)!
    self.currency = Currency(rawValue: row["Currency"]!)!
  }
}

enum Currency: String {
  case GBP, USD, EUR
}
