// The Swift Programming Language
// https://docs.swift.org/swift-book

import GenLedgerCore

let tool = GenLedger()

do {
  try tool.run()
} catch {
  print("Whoops: An error occurred: \(error)")
}


