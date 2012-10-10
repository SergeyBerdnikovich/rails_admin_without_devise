class Invite < ActiveRecord::Base
  attr_accessible :email, :sender_id, :status, :target_id
  belongs_to :user, foreign_key: "sender_id"
  def name
    self.target_id
  end
end
