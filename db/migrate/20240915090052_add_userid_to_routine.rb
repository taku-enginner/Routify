class AddUseridToRoutine < ActiveRecord::Migration[7.2]
  def change
    add_column :routines, :user_id, :integer
    add_index :routines, :user_id # 外部キーにはindexを追加することが推奨されている

  end
end
