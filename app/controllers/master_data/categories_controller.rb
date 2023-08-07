class MasterData::CategoriesController < ApplicationController 
  before_action :checkRole
  
  def create
    begin
      Category.create!(
        'nama_kategori' => params[:namaKategori]
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
      else
        txError(@data.to_json)
      end
    rescue StandardError => e
      txError(e)
    end
  end

  def detail
    begin
      @data = Category.find(params[:id])
      render json:[
        "nama" => @data.nama_kategori
      ]
    rescue StandardError => e
      txError(e)
    end
  end

  def delete
    begin
      @data = Category.find(params[:id]).destroy
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

  def getAll
    begin
      @data = Category.all
      render json: [
        "data_categories" => @data
      ]
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