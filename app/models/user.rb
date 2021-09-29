class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :organisation, touch: true
  has_many :shifts, dependent: :destroy

  # validates :login,
  #           presence: true

  validates :email,
            presence: true,
            format: { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i } 
            
  before_save :downcase_email
  
  private

  def downcase_email
    self.email = self.email.downcase
  end

end
