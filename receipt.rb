class Receipt

attr_accessor :item_list

  def initialize
    @item_list = []
  end

  def sub_total
    all_sub_total = 0
  @item_list.each do |item|
    all_sub_total += item.price
    end
  all_sub_total
  end

  def tax_total
    all_tax_total = 0
  @item_list.each do |item|
    all_tax_total += item.total_tax
    end
  all_tax_total
  end

  def total_cost
    tax_total + sub_total
  end

  def printreceipt
    @item_list.each do |item|
      puts "1 #{item.title} at $#{item.price}"
    end
      puts ""
      puts "Total Sales Taxes: #{tax_total}"
      puts "Price Total: #{total_cost}"
      puts ""
      puts "Have a nice day!"
      puts ""
  end
end
