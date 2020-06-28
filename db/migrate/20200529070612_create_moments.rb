class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|
      t.integer :user_id, comment: '用户id'
      t.string :content, comment:'内容', default: ''

      t.timestamps
    end
  end
end
