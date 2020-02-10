class PotterService
  def tell_me_if_they_are_in_the_order(name, house)
    response = Faraday.get("https://www.potterapi.com/v1/characters?key=$2a$10$kW42HrLRfS5wjwWlGYzbZ.b5sZ3o.CiK552StpAAv38JiRvAbVwHm&house=#{house}&orderOfThePhoenix=true")
    order_members = JSON.parse(response.body)
    order_members.any? do |member|
      member["name"] == name
    end
  end
end