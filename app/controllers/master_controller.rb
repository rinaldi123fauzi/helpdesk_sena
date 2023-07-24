class MasterController < ApplicationController
  def index
    @roles = Role.all.order("CREATED_AT ASC")
    if params[:user_email].present?
      @users = User.where(['email LIKE (?)', "#{params[:user_email]}%"]).order("CREATED_AT ASC").limit(20)
    else
      @users = User.all.order("CREATED_AT ASC").limit(10)
    end
    @employees = Employee.all.order("CREATED_AT DESC")
    @work_units = WorkUnit.all.order("CREATED_AT DESC")
    @inventories = Inventory.all.order("CREATED_AT DESC")
    @items = Item.all.order("CREATED_AT DESC")
    @areas = Area.all.order("CREATED_AT DESC")
    @categories = Category.all.order("CREATED_AT DESC")
    @sub_categories = SubCategory.all.order("CREATED_AT DESC")
    @sla = Sla.all.order("CREATED_AT DESC")
    @positions = Position.all.order("CREATED_AT DESC")
  end
end
