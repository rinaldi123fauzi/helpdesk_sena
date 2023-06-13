class MasterData::AreasController < ApplicationController 
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
end