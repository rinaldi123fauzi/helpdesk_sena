class MasterData::PositionController < ApplicationController 
  before_action :checkRole
  
  def create
    Position.create!(
      'user_id' => params[:user],
      'role_id' => params[:role],
      'work_unit_id' => params[:satuan_kerja],
      'punya_pm' => params[:punya_pm]
    )
    render json: [  
      "status" => "tersimpan"
    ]
  end

  def update
    @data = Position.update(params[:id_area],
      {
        :user_id => params[:user],
        :role_id => params[:role],
        :work_unit_id => params[:satuan_kerja],
        :punya_pm => params[:punya_pm]
      }
    )
    if (@data)
      render json: [  
        "status" => "tersimpan"
      ]
    end
  end

  def detail
    @data = Position.find(params[:id])
    @users = User.all
    @roles = Role.all
    @work_units = WorkUnit.all
    render json:[
      "positions" => @data,
      "users" => @users,
      "roles" => @roles,
      "work_units" => @work_units
    ]
  end

  def delete
    @data = Position.find(params[:id]).destroy
    if (@data)
      render json: {
          status: 200,
      }
    end
  end

  def getAllData
    @users = User.all
    @roles = Role.all
    @work_units = WorkUnit.all

    render json:{
      users: @users,
      roles: @roles,
      work_units: @work_units
    }
  end

  private
  def checkRole
    unless getRole == "superadmin"
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end