class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new 
        @product = Product.new
    end
    def create
        @product = Product.new(params[:product])
        if @product.save
            flash[:notice] = "Successfully created product."
        else
            render 'new'
        end
    end

    def show
    end

    def edit 
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        if @product.update_attributes(params[:product])
            redirect_to products_params
            flash[:notice] = "Successfully updated product."
        else
            render 'edit'
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        flash[:notice] = "Successfully destroyed product."
        redirect_to products_path
    end

    private
        def product_params
            params.require(:product).permit(:title, :price)
        end
end
