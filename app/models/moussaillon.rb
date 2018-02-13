class Moussaillon < ApplicationRecord
attr_accessor :sign_up_code
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :gossips
  validates :sign_up_code, on: :create, presence: true, inclusion: { in: ["aldou"]}


end
