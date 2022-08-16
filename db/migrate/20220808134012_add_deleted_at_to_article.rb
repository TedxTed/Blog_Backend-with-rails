class AddDeletedAtToArticle < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :deleted_at, :datetime
  end
end
