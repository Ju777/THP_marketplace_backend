class AddColumnsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :furnished, :boolean
    add_column :articles, :included_charges, :boolean
    add_column :articles, :surface, :decimal
    add_column :articles, :other_charges, :decimal
  end
end
