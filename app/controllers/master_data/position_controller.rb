class MasterData::PositionController < ApplicationController 
  before_action :checkRole
  
  def create
    begin
      Position.create!(
        'user_id' => params[:user],
        'role_id' => params[:role],
        'work_unit_id' => params[:satuan_kerja],
        'punya_pm' => params[:punya_pm]
      )
      render json: [  
        "status" => "tersimpan"
      ]
    rescue StandardError => e
      txError(e)
    end
  end

  def update
    begin
      @data = Position.update(params[:id_kepala_divisi],
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
      else
        txError(@data.to_json)
      end
    rescue StandardError => e
      txError(e)
    end
  end

  def detail
    begin
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
    rescue StandardError => e
      txError(e)
    end
  end

  def delete
    begin
      @data = Position.find(params[:id]).destroy
      if (@data)
        render json: {
            status: 200,
        }
      else
        txError(@data.to_json)
      end
    rescue StandardError => e
      txError(e)
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
    unless getRole.include? "superadmin" or getRole.include? "admin"
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end