# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  username               :string
#  state                  :boolean          default(TRUE)
#  user_type              :string
#  token                  :integer
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # belongs_to :role, optional: true
  # delegate :permissions, to: :role
  # has_one :worker, dependent: :destroy
  has_many :role_assignments, dependent: :destroy
  has_many :roles, through: :role_assignments
  has_many :inventory
  has_many :position, dependent: :destroy

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  def can?(&block)
    roles.map(&:permissions).any?(&block)
  end

  def computed_permissions
    roles.map(&:computed_permissions).reduce(RoleCore::ComputedPermissions.new, &:concat)
  end

  def active_for_authentication?
    super && state
  end

  def pullDataLdap
    ldap = Net::LDAP.new :host => '182.253.69.21',
      :port => 389,
      :auth => {
          :method => :simple,
          :username => "mohamad.rinaldi@pt-sena.co.id",
          :password => "Daanmogot123@"
      }
    if ldap.bind
      filter = Net::LDAP::Filter.eq("cn", "*")
      treebase = "OU=_PT.SENA,DC=SENA,DC=INTRA"
      @array_username = []
      ldap.search(:base => treebase, :filter => filter) do |entry|
        @array_username.push(
          "email" => entry['mail']
        )
      end
      @array_username.each do |data|
        if data['email'].present?
         emailLdap = data['email'].join("").downcase
         email = emailLdap.split('@')
         checkUser = User.where(email: emailLdap)
         if checkUser.count == 0
          user = User.new
          user.username = email[0]
          user.email = emailLdap
          user.password = "SENA123"
          user.role_ids = [4]
          user.state = true
          user.save
         end
        end
      end
    else
      puts "Gagal"
    end
  end
end
