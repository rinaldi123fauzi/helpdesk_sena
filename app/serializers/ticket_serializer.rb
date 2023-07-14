# https://stackoverflow.com/questions/47809626/how-to-use-devise-current-user-in-active-model-serializers
class TicketSerializer < ActiveModel::Serializer
  attributes :id,
  :nomor_tiket,
  :dibuat_oleh,
  :layanan,
  :sub_layanan,
  :satuan_kerja,
  :area,
  :deskripsi,
  :teknisi,
  :status,
  :approval_by,
  :pause_respon,
  :current_user,
  :user,
  :file,
  :history,
  :pending_approval

  def nomor_tiket
    self.object.no_ticket
  end

  def dibuat_oleh
    self.object.issued_by
  end
  
  def layanan
    instance_options[:nama_kategori]
  end

  def sub_layanan
    instance_options[:nama_sub_kategori]
  end

  def satuan_kerja
    instance_options[:work_unit]
  end

  def area
    instance_options[:area]
  end

  def deskripsi 
    self.object.description
  end

  def teknisi
    self.object.assigned_by
  end

  def status
    self.object.status
  end

  def approval_by
    self.object.approval_by
  end
  
  def pause_respon
    self.object.pause_respon
  end

  def current_user
    instance_options[:role]
  end

  def user
    instance_options[:current_user]
  end

  def file
    @data_attach = []
    instance_options[:file].order(:created_at => :desc).each do |data|
      @data_attach.push(
        "link" => Rails.application.routes.url_helpers.rails_blob_url(data, only_path: true),
        "nama_file" => data.filename
      )
    end
    return @data_attach
  end

  def history
    @history = Approval.where(ticket_id: self.object.id).order(:created_at => :desc)
    @data_history = []
    @history.each do |data|
      @data_history.push(
        "created_at" => data.created_at.strftime('%d %b %Y %H:%M:%S'),
        "issued_by" => data.issued_by,
        "approve_level" => data.approve_level,
        "description" => data.description
      )
    end
    return @data_history
  end

  def pending_approval
    @getStatus = Ticket.where('id = ?', self.object.id)
    return @getStatus.first
  end
end
