class HouseMember
  def initialize(house)
    @house = house
  end

  def order_member?
    order_boolean = PotterService.new.tell_me_if_they_are_in_the_order
  end

  def name
    require 'pry'; binding.pry
  end

  def role
  end

  def house
  end

  def patronus
  end
end