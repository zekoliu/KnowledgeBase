class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :phone, comment: "电话号码", default: ""
      t.string :name, comment: "名字", default: ""
      t.string :openid, comment: "微信openid"
      t.string :password_digest
      t.timestamps
    end
  end
end
