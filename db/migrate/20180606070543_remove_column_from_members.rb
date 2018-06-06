class RemoveColumnFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :email, :string
  end
end
