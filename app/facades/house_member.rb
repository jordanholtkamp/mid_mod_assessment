class HouseMember
  attr_reader :house,
              :name

  def initialize(house, name)
    @house = house
    @name = name
  end

  def order_member?
    PotterService.new.tell_me_if_they_are_in_the_order(@name, @house)
  end

  def role
    PotterService.new.tell_me_their_role(@name)
  end

  def patronus
  end
end