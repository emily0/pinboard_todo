class ToreadItemsController < ApplicationController
  before_action :set_toread_list
  before_action :set_toread_item, except: [:create]
  def create
    @toread_item = @toread_list.toread_items.create(toread_item_params)
    redirect_to @toread_list
  end


  def destroy
    if @toread_item.destroy
      flash[:success] = "Toread List item was deleted."
    else
      flash[:error] = "Toread List item couldn't be deleted"
    end
    redirect_to @toread_list
  end

  def complete
    @toread_item.update_attribute(:completed_at, Time.now)
    redirect_to @toread_list, notice: "Toread item completed"
  end

  private

  def set_toread_list
    @toread_list = ToreadList.find(params[:toread_list_id])
  end

  def set_toread_item
    @toread_item = @toread_list.toread_items.find(params[:id])
  end

  def toread_item_params
    params[:toread_item].permit(:content, :url)
  end
end
