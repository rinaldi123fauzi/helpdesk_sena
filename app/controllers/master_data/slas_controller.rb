class MasterData::SlasController < ApplicationController 
    before_action :checkRole

    def create
      Sla.create!(
        'category_id' => params[:layanan],
        'period' => params[:periode],
        'status' => params[:status],
      )
      render json: [  
        "status" => "tersimpan"
      ]
    end
  
    def update
      @data = Sla.update(params[:id_sla],
        {
          :category_id => params[:layanan],
          :period => params[:periode],
          :status => params[:status]
        }
      )
      if (@data)
        render json: [  
          "status" => "tersimpan"
        ]
      end
    end
  
    def detail
      @data = Sla.find(params[:id])
      @categories = Category.all
      render json:[
        "category_id" => @data.category_id,
        "periode" => @data.period,
        "status" => @data.status,
        "data_categories" => @categories
      ]
    end
  
    def delete
      @data = Sla.find(params[:id]).destroy
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