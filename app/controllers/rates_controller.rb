class RatesController < ApplicationController
	respond_to :json

	def index
		respond_with Rate.get_data_keys
	end

	def show
		respond_with Rate.get_data(params[:id])
	end
end