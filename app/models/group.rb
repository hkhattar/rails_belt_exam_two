class Group < ApplicationRecord
  belongs_to :user
  has_many :joins,dependent: :destroy
  has_many :users, through: :joins,dependent: :destroy
  validates :name,  presence:true
  validates :description,  presence:true
  validates :name,  length: { minimum: 5 }
  validates :description,  length: { minimum: 10 }
end
