class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :delete]

  def index
    @items = Item.all

    render json: @items
  end

  def user_items
    @items = @user.items

    render json: @items
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created
    else
      render json: @item, status: :unprocessable_entity
    end
  end

  def show
    render json: @item
  end

  def update
    if @item.update(item)
      render json: @item, status: :ok
    else
      render json: @item, status: :unprocessable_entity
    end
  end

  def delete
    @item.destroy
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'User not found' }, status: :not_found
  end

  def item_params
    params.require(:item).permit(:name, :price, :type, :category_id, :user_id)
  end
end
