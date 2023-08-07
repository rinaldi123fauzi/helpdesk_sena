class MasterData::SlasController < ApplicationController 
    before_action :checkRole

    def create
      begin
        Sla.create!(
          'category_id' => params[:layanan],
          'period' => params[:periode],
          'status' => params[:status],
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
        else
          txError(@data.to_json)
        end
      rescue StandardError => e
        txError(e)
      end
    end
  
    def detail
      begin
        @data = Sla.find(params[:id])
        @categories = Category.all
        render json:[
          "category_id" => @data.category_id,
          "periode" => @data.period,
          "status" => @data.status,
          "data_categories" => @categories
        ]
      rescue StandardError => e
        txError(e)
      end
    end
  
    def delete
      begin
        @data = Sla.find(params[:id]).destroy
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