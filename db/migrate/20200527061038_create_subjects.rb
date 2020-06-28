class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name, comment: '科目名称', default: ''

      t.timestamps
    end
  end
end
