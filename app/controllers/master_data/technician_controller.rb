class MasterData::TechnicianController < ApplicationController 
    def create
      Technician.create!(
        'user_id' => params[:namaTeknisi],
      )
      render json: [  
        "status" => "tersimpan"
      ]
    end
  
    def update
      @data = Technician.update(params[:id_teknsi],
        {
          :user_id => params[:namaTeknisi]
        }
      )
      if (@data)
        render json: [  
          "status" => "tersimpan"
        ]
      end
    end
  
    def detail
      @data = Technician.find(params[:id])
      @users = User.all
      render json:[
        "user_id" => @data.user_id,
        "data_users" => @users
      ]
    end
  
    def delete
      @data = Technician.find(params[:id]).destroy
      if (@data)
        render json: [  
            "status" => "terhapus",
        ]
      end
    end

    def getUser
      @data = User.all
      render json: [  
          "data_users" => @data
      ]
    end
  end