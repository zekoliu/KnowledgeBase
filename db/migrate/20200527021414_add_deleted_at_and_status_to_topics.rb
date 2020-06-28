class AddDeletedAtAndStatusToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :deleted_at, :datetime, comment: '删除时间'
    add_column :topics, :status, :string, comment: '审核状态', default: 'pending'
  end
end
