class MasterData::SubCategoriesController < ApplicationController 
  def create
    SubCategory.create!(
      'nama_sub_kategori' => params[:namaSubKategori],
      'category_id' => params[:category_id],
      'approval_berjenjang' => params[:approval_berjenjang]
    )
    render json: [  
      "status" => "tersimpan"
    ]
  end

  def update
    @data = SubCategory.update(params[:id_subkategori],
      {
        :nama_sub_kategori => params[:namaSubKategori],
        :category_id => params[:category_id],
        :approval_berjenjang => params[:approval_berjenjang]
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
    @data = SubCategory.find(params[:id])
    @categories = Category.all
    render json:[
      "nama" => @data.nama_sub_kategori,
      "category_id" => @data.category_id,
      "approval_berjenjang" => @data.approval_berjenjang,
      "categories" => @categories
    ]
  end

  def delete
    @data = SubCategory.find(params[:id]).destroy
    if (@data)
      render json: [  
        "status" => "terhapus",
      ]
    end
  end
end