class Account < ActiveRecord::Base
  belongs_to :user
  attr_accessible :github_id, :login, :user_id

  def name
    self.login
  end
end
