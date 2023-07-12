class MasterData::SubCategoriesController < ApplicationController 
  before_action :checkRole

  def create
    SubCategory.create!(
      'nama_sub_kategori' => params[:namaSubKategori],
      'category_id' => params[:category_id],
      'approval_berjenjang' => params[:approval_berjenjang],
      'template_ticket' => params[:template_ticket],
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
        :approval_berjenjang => params[:approval_berjenjang],
        :template_ticket => params[:template_ticket]
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
      "categories" => @categories,
      "template_ticket" => @data.template_ticket
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