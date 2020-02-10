class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com')
    response = conn.get("/v1/characters?key=$2a$10$kW42HrLRfS5wjwWlGYzbZ.b5sZ3o.CiK552StpAAv38JiRvAbVwHm&house=#{house}")

    house_members = JSON.parse(response.body, symbolize_names: true)

    member_iteration = house_members.map do |member|
      HouseMember.new(house, member[:name])
    end

    render locals: {
      house_members: member_iteration
    }
  end
end