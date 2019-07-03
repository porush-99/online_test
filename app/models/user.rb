class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :set_role

  has_many :subjects, dependent: :destroy

  def set_role
  	self.update_column(:role , "student")
  end

  def student?
  	self.role == "student"
  end

  def teacher?
  	self.role == "teacher"
  end
end
