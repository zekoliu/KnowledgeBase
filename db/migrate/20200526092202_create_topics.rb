class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title, comment: '题意'
      t.string :answer, comment: '答案'
      t.string :options, comment: '选项'
      t.string :parsing, comment: '解析', default: ''

      t.timestamps
    end
  end
end
