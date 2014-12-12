class HomeController < ApplicationController
  def index
  	@rates = Rate.get_data
  end
end
