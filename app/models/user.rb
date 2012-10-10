class User < ActiveRecord::Base
  belongs_to :role
  has_many :accounts, dependent: :destroy
  has_many :invites, :foreign_key => 'sender_id', dependent: :destroy
  attr_accessible :email, :name, :password, :role_id
end
