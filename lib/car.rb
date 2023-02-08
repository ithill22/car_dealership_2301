class Car

  attr_reader :make, :model, :monthly_payment
  def initialize(make, model, monthly_payment)
    @make = make.split.first
    @model = make.split.last
    @monthly_payment = model
    
  end


end