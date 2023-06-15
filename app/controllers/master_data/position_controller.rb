class MasterData::PositionController < ApplicationController 
  def create
    Position.create!(
      'user_id' => params[:user],
      'role_id' => params[:role],
      'work_unit_id' => params[:satker]
    )
    render json: [  
      "status" => "tersimpan"
    ]
  end

  def update
    @data = Position.update(params[:id_jabatan],
      {
        :user_id => params[:user],
        :role_id => params[:role],
        :work_unit_id => params[:satker]
      }
    )
    if (@data)
      render json: [  
        "status" => "tersimpan",
      ]
    end
  end

  def detail
    @data = Position.find(params[:id])
    @roles = Role.all
    @users = User.all
    @work_units = WorkUnit.all
    render json:[
      "user_id" => @data.user_id,
      "role_id" => @data.role_id,
      "work_unit_id" => @data.work_unit_id,
      "roles" => @roles,
      "users" => @users,
      "work_units" => @work_units
    ]
  end

  def delete
    @data = Position.find(params[:id]).destroy
    if (@data)
      render json: [  
          "status" => "terhapus",
      ]
    end
  end

  def listForm
    @roles = Role.all
    @users = User.all
    @work_units = WorkUnit.all
    render json:[
      "data_roles" => @roles,
      "data_users" => @users,
      "data_work_units" => @work_units
    ]
  end
end