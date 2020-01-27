class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :accidents, dependent: :destroy
  has_many :memberships, dependent: :destroy #naming?
  has_many :teams, through: :memberships


end
