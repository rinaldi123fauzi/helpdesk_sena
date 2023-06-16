Rails.application.routes.draw do


  resources :ticket_chats
  resources :positions
  resources :technicians
  resources :slas
  resources :tickets
  resources :sub_categories
  resources :inventories
  resources :items
  resources :approvals
  resources :loans
  resources :employees
  resources :adjustment_jobs
  resources :additional_jobs
  resources :areas
  resources :master_jobs
  resources :material_types
  resources :units
  resources :sub_work_categories
  resources :work_categories
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'home#index'
  get 'master/index', to: "master#index"
  resources :change_passwords, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end
  resources :roles
  resources :users
  resources :data_companies
  resources :categories
  resources :contacts
  resources :work_units

  resources :helper_json do
    post :getJudulPekerjaan, on: :collection
    post :getNamaPekerjaan, on: :collection
    post :updateSatker, on: :collection
    post :simpanSatker, on: :collection
    get :getDetailSatker, on: :collection
    get :getAllSatker, on: :collection
    post :simpanKaryawan, on: :collection
    post :updateKaryawan, on: :collection
    get :getDetailKaryawan, on: :collection
    post :hapusKaryawan, on: :collection
    get :approve, on: :collection
    get :reject, on: :collection
    get :done, on: :collection
    get :getDetailPeminjaman, on: :collection
    post :searchDataDashboard, on: :collection
    get :getDetailItem, on: :collection
    post :simpanItem, on: :collection
    post :updateItem, on: :collection
    get :getDetailInventory, on: :collection
    post :simpanInventory, on: :collection
    post :updateInventory, on: :collection
    get :getAllItem, on: :collection
    get :hapusSatker, on: :collection
    get :checkInventory, on: :collection
    get :deleteFile, on: :collection
    post :activationUser, on: :collection

    member do
      get "/sub_work_category", to: "helper_json#getSubWorkCategory"
    end
  end

  namespace :master_data do
    scope :categories do
      post 'create' => 'categories#create'
      post 'update' => 'categories#update'
      get 'detail' => 'categories#detail'
      delete 'delete' => 'categories#delete'
      get 'getAll' => 'categories#getAll'
    end

    scope :areas do
      post 'create' => 'areas#create'
      post 'update' => 'areas#update'
      get 'detail' => 'areas#detail'
      delete 'delete' => 'areas#delete'
    end

    scope :sub_categories do
      post 'create' => 'sub_categories#create'
      post 'update' => 'sub_categories#update'
      get 'detail' => 'sub_categories#detail'
      delete 'delete' => 'sub_categories#delete'
    end

    scope :slas do
      post 'create' => 'slas#create'
      put 'update' => 'slas#update'
      get 'detail' => 'slas#detail'
      delete 'delete' => 'slas#delete'
    end
    
    scope :technician do
      post 'create' => 'technician#create'
      put 'update' => 'technician#update'
      get 'detail' => 'technician#detail'
      get 'all-user' => 'technician#getUser'
      delete 'delete' => 'technician#delete'
    end

    scope :position do
      post 'create' => 'position#create'
      put 'update' => 'position#update'
      get 'detail' => 'position#detail'
      get 'all-item' => 'position#listForm'
      delete 'delete' => 'position#delete'
    end
  end

  namespace :transaksi do
    scope :tickets do
      get 'detail' => 'tickets#detail'
      get 'detail-tiket' => 'tickets#detailTicket'
      get 'list-form' => 'tickets#listForm'
      get 'list-sub-category' => 'tickets#listSubCategory'
      get 'get-approval-berjenjang' => 'tickets#getApprovalBerjenjang'
      post 'create' => 'tickets#create'
      put 'update' => 'tickets#update'
      put 'ticket-assign' => 'tickets#assignTicket'
      put 'ticket-close' => 'tickets#ticketClose'
      delete 'delete-ticket' => 'tickets#deleteTicket'
    end

    scope :dashboard do
      get 'get-all' => 'dashboard#getAll'
      post 'get-all' => 'dashboard#getAll'
    end
  end

  # resources :categories do
  #   resources :contacts, only: [:index], module: :categories
  # end
  # resources :type_workers

end
