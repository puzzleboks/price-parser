class StoresController < ApplicationController
  # before any post action happens, it will authenticate the user
    before_action :authenticate_user!

    # another devise helper method that retrieves the user object that has been authenticated
    # def index
    #   @stores = current_user.stores
    # end

    def index
      if params[:user_id]  # Jesse's proposed solution
        @stores = Store.where(user_id: params[:user_id])
      else
        @stores = Store.all
      end
    end

    def show
      @store = Store.find(params[:id])
    end

    def new
      @store = Store.new
    end

    def edit
      @store = Store.find(params[:id])
    end

    def create
      @store = current_user.stores.new(store_params)
      if @store.save
        redirect_to user_stores_path #@store
      else render 'new'
      end
    end

    def update
      @store = Store.find(params[:id])
      if @store.update(store_params)
        redirect_to @store
      else
        render 'edit'
      end
  	end

    def destroy
      @store = Store.find(params[:id])
      @store.destroy
      redirect_to user_stores_path
    end

    private
    def store_params
      params.require(:store).permit(:name)
    end

end
