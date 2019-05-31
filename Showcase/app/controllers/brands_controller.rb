class BrandsController < ApplicationController
	def index
		@brands = Brand.all
		@categories = Category.all
	end
	def new
		@brand = Brand.new
	end

	def create
		@brand= Brand.new(brand_params)
		if @brand.save
			redirect_to @brand
		else
			render 'new'
		end
	end

	def show
		@brand= Brand.find(params[:id])
		@products = @brand.products
		
		@categories = Category.all
		@brands = Brand.all

	end
	def edit
		@brand= Brand.find(params[:id])
	end
	def update
		@brand= Brand.find(params[:id])
		if @brand.update(brand_params)
			redirect_to @brand
		else
			render 'edit'
		end
	end
	def destroy

	end

	private 
		def brand_params
			params.require(:brand).permit(:brand_name)
		end


end
