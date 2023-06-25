class MasterData::AreasController < ApplicationController 
  before_action :checkRole
  
  def create
    Area.create!(
      'nama' => params[:namaArea]
    )
    render json: [  
      "status" => "tersimpan"
    ]
  end

  def update
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
    end
  end

  def detail
    @data = Area.find(params[:id])
    render json:[
      "nama" => @data.nama
    ]
  end

  def delete
    @data = Area.find(params[:id]).destroy
    if (@data)
      render json: [  
          "status" => "terhapus",
      ]
    end
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