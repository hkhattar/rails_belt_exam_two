class User < ApplicationRecord
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
 
  has_many :groups
  has_many :joins
  has_many :groups_joined, through: :groups, source: :group, dependent: :destroy
  validates :first_name,  presence:true
  validates :last_name,  presence:true
  validates :email, presence: true, uniqueness: true,format: {with: EMAIL_REGEX}
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, :presence => true
  validates :password,length: { minimum: 8 }
end
