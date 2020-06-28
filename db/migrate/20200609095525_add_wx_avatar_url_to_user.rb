class AddWxAvatarUrlToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wx_avatar_url, :string, default: '', comment: '微信头像url'
  end
end
