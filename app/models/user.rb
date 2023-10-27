class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         enum role: [:client,  :admin]

         validates :email, presence: true
         validates :password, presence: true
    belongs_to :admin, optional: true, class_name: "User"
    has_many :electric_cars
    
  after_initialize :set_default_role, if: :new_record?
    def set_default_role
    self.role ||= :admin
  end  
end
 
