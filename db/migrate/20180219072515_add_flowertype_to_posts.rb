class AddFlowertypeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :flowertype, :string
  end
end
