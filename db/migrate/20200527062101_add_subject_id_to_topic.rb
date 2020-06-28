class AddSubjectIdToTopic < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :subject_id, :integer, comment: '科目id'
  end
end
