class AddCountriesTable < ActiveRecord::Migration
  def change
    create_table(:countries) do |t|
      t.string :name
      t.string :iso, size: 2
      t.string :slug
    end
  end
end
