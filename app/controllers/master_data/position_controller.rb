class MasterData::PositionController < ApplicationController 
  before_action :checkRole
  
  def create
    begin
      @check = Position.where(work_unit_id: params[:satuan_kerja])
      if @check.count == 0
        Position.create!(
          'user_id' => params[:user],
          'role_id' => params[:role],
          'work_unit_id' => params[:satuan_kerja],
          'punya_pm' => params[:punya_pm]
        )
        users = User.where(id: params[:user])
        if users.count == 1
          user = users.first
          user.role_ids = [params[:role]]
          user.save
        end
        render json: [  
          "status" => "tersimpan"
        ]
      else
        render json: [  
          "status" => "duplikasi"
        ]
      end
    rescue StandardError => e
      txError(e)
    end
  end

  def update
    begin
      userBefores = Position.where(user_id: params[:user])
      if userBefores.count > 1
        posisi = Position.find_by(id: params[:id_kepala_divisi])
        user = User.find(posisi.user_id)
        user.role_ids = [4]
        user.save
      end
      @data = Position.update(params[:id_kepala_divisi],
        {
          :user_id => params[:user],
          :role_id => params[:role],
          :work_unit_id => params[:satuan_kerja],
          :punya_pm => params[:punya_pm]
        }
      )
      if (@data)
        users = User.where(id: params[:user])
        if users.count == 1
          user = users.first
          user.role_ids = [params[:role]]
          user.save
        end
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
      @dataUser = Position.find(params[:id])
      users = User.where(id: @dataUser.user_id)
      if users.count == 1
        user = users.first
        user.role_ids = [4]
        user.save
      end
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