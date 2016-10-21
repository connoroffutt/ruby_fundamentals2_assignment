class Item

attr_accessor  :title, :import_status, :exempt_status, :price

  def initialize(title, import_status, exempt_status, price, receipt)
    @title = title
    @import_status = import_status
    @exempt_status = exempt_status
    @price = price
    receipt.item_list << self
    exempt_tax
    import_tax
    @price.to_f

  end

  def import_tax
    if @import_status
       @import_tax = @price * (0.05)
    else
       @import_tax = 0
    end
  end

  def exempt_tax
    if @exempt_status
      @exempt_tax = 0
    else
      @exempt_tax = @price * (0.1)
    end
  end

  def total_tax
    @exempt_tax + @import_tax
  end


end
