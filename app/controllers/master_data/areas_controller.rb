class MasterData::AreasController < ApplicationController 
  before_action :checkRole
  
  def create
    begin
      Area.create!(
        'nama' => params[:namaArea]
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
      @data = Area.update(params[:id_area],
        {
          :nama => params[:namaArea]
        }
      )
      if (@data)
        render json: [  
          "status" => "tersimpan",
          "area" => params[:namaArea]
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
      @data = Area.find(params[:id])
      render json:[
        "nama" => @data.nama
      ]
    rescue StandardError => e
      txError(e)
    end
  end

  def delete
    begin
      @data = Area.find(params[:id]).destroy
      if (@data)
        render json: [  
            "status" => "terhapus",
        ]
      else
        txError(@data.to_json)
      end
    rescue StandardError => e
      txError(e)
    end
  end

  private
  def checkRole
    unless getRole.include? "superadmin"
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end