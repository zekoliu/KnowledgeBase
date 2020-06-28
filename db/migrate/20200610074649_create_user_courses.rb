class CreateUserCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_courses do |t|
      t.integer :user_id, comment: '用户id'
      t.integer :course_id, comment: '课程id'

      t.timestamps
    end
  end
end
