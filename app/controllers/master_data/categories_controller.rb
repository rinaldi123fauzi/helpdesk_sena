class MasterData::CategoriesController < ApplicationController 
  before_action :checkRole
  
  def create
    Category.create!(
      'nama_kategori' => params[:namaKategori]
    )
    render json: [  
      "status" => "tersimpan"
    ]
  end

  def update
    @data = Category.update(params[:id_Kategori],
      {
        :nama_kategori => params[:namaKategori]
      }
    )
    if (@data)
      render json: [  
        "status" => "tersimpan",
        "kategori" => params[:namaKategori]
      ]
    end
  end

  def detail
    @data = Category.find(params[:id])
    render json:[
      "nama" => @data.nama_kategori
    ]
  end

  def delete
    @data = Category.find(params[:id]).destroy
    if (@data)
      render json: [  
          "status" => "terhapus",
      ]
    end
  end

  def getAll
    @data = Category.all
    render json: [
      "data_categories" => @data
    ]
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