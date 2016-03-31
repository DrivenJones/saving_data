class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets 
  validates :type, inclusion: { in: %w(Designer RegularUser)}

  # validate :type_is_either_designer_or_regular_user

  # def type_is_either_designer_or_regular_user
  # 	if self.type == "Designer" || self.type=="RegularUser"
  # 		#do nothing
  # 	else
  # 		self.errors.add(:type, "You can only be a designer or regular user")
  # 	end
  # end
  
end
