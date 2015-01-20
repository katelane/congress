class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth_data)
    user = User.where(uid: auth_data['uid']).first_or_create
    user.tap { |u| u.update_attributes name: auth_data["info"]["name"] }
  end

end
