class AddCommentsToStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :user_styles, :comments, :string
  end
end
