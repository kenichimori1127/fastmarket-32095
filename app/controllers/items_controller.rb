class ItemsController < ApplicationController
  def index
    # @items = Items.includes(:user)
  end

   def new
    @user = User.new
 end
end
