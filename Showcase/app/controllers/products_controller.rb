class ProductsController < ApplicationController
	def index
		@products = Product.all
		@categories = Category.all
		@brands = Brand.all
	end
	def new
		@product = Product.new
	end

	def create
		@product= Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def show
		@product= Product.find(params[:id])
		@category = Category.find(@product.category_id)
		@brand = Brand.find(@product.brand_id)
	end
	def edit
		@product= Product.find(params[:id])
	end
	def update
		@product= Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end
	def destroy

	end

	private 
		def product_params
			params.require(:product).permit(:product_name,:product_description, :product_price, :category_id,:brand_id)
		end

end
