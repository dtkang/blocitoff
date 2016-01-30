class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    
    if @item.save
      flash[:notice] = "Item created"
    else
      flash[:error] = "Item failed to create"
    end
    
    respond_to do |f|
      f.html
      f.js
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
end
