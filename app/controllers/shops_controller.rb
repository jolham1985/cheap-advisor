class ShopsController < ApplicationController

  SHOPS = [ { name: "Mo mo" , address: "Fleet street" , catagory: "indian"},
            { name: "Yakos" , address: "Oxford street" , catagory: "sushi"},
            { name: "Bitongue" , address: "Wimbledon" , catagory: "portugese"},
          ]

  def index
    @catagory = params[:food_type]
    if @catagory
    @shops = SHOPS.select {|s| s[:catagory] == @catagory}
  else
     @shops = SHOPS
  end
end

def create
  # shop = shop.new (name:  params [:name], address: params [:address], catagory: params[:catagory] )
  render plain: "shop #{params[:name]} should be created"
end



end
