require './lib/car'

class Dealership 
  
  attr_reader :name, :address, :inventory, :inventory_count
  def initialize(name, address) 
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count = inventory.count
  end

  def inventory?
    @inventory_count > 0
  end

  def cars_by_make(make)
    @inventory.filter{|car| car.make == make}
  end

  def total_value
    @inventory.map.sum{|car| car.total_cost}
  end

  def details
    {total_value: total_value, address: @address}
  end

  def average_price_of_car
    (total_value).div(inventory_count).to_s.reverse.scan(/\d{3}|.+/).join(",").reverse
  end

  def cars_sorted_by_price
    @inventory.sort_by{|car| car.total_cost}
  end

  def inventory_hash
   makes = @inventory.filter{|car| car.make == make}
  end


end
   
