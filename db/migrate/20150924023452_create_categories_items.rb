class CreateCategoriesItems < ActiveRecord::Migration
  def change
    create_join_table :categories, :items
  end
end
