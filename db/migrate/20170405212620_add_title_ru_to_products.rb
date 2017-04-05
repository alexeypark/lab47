class AddTitleRuToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title_ru, :string
  end
end
