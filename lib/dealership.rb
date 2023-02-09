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
end
   
