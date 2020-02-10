class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: 'https://www.potterapi.com')
    response = conn.get("/v1/characters?key=$2a$10$kW42HrLRfS5wjwWlGYzbZ.b5sZ3o.CiK552StpAAv38JiRvAbVwHm&house=#{house}")

    render locals: {
      house_members: JSON.parse(response.body, symbolize_names: true)
    }
  end
end