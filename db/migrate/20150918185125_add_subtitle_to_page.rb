class AddSubtitleToPage < ActiveRecord::Migration
  def change
    add_column :pages, :subtitle, :string
  end
end
