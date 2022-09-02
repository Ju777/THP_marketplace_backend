class AddColumnToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :lat, :decimal
    add_column :articles, :lon, :decimal
  end
end
