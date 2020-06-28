class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, default: '', comment: '课程名字'
      t.decimal :price, precision: 5, scale: 2, default: 0.0, comment: '课程价格'
      t.decimal :actual_price, precision: 5, scale: 2, default: 0.0, comment: '课程实际价格'
      t.datetime :finish_date, comment: '拼单结束时间'
      t.integer :group_number, comment: '成团人数'

      t.timestamps
    end
  end
end
