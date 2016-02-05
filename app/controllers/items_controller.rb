class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    @new_item = Item.new
    
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
  
  def destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])
    
    if @item.delete
      flash[:notice] = "Item deleted"
    else
      flash[:error] = "Failed to delete item"
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
