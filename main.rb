require_relative "item"
require_relative "receipt"

receipt1 = Receipt.new
receipt2 = Receipt.new
receipt3 = Receipt.new

book = Item.new("Book", true, false, 12.49, receipt1)
musiccd = Item.new("CD", false, true, 14.99, receipt1)
chocolatebar = Item.new("Chocolate bar", false, true, 0.85, receipt1)
impchoc = Item.new("Imported Box of Chocolates", true, true, 10.00, receipt2)
impperf = Item.new("Imported Bottle of Perfume", true, false, 47.50, receipt2)
impperf2 = Item.new("Imported Bottle of Perfume", true, false, 27.99, receipt3)
domperf = Item.new("Bottle of Perfume", false, false, 18.99, receipt3)
impchoc2 = Item.new("Imported Box of Chocolates", true, true, 11.25, receipt3)


receipt1.printreceipt
receipt2.printreceipt
receipt3.printreceipt
