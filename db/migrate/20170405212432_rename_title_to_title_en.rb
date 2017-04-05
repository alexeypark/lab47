class RenameTitleToTitleEn < ActiveRecord::Migration
  def change
    rename_column :products, :title, :title_en
  end
end
