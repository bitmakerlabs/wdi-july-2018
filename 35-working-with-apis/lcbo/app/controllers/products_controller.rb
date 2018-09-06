class ProductsController < ApplicationController

  def index
    # render json: { result: "products" }

    response = HTTParty.get(
      "https://lcboapi.com/products?access_key=#{ENV['LCBO_KEY']}"
    )

    @results = JSON.parse(response.body)

    render :index
    # render json: { products: @results["result"] }
  end

end
