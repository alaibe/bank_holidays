class CreateTableBankHolidays < ActiveRecord::Migration
  def change
    create_table :bank_holidays do |t|
      t.string :name
      t.date :on
      t.references :have_bank_holiday, polymorphic: true
      t.boolean :informal, default: false
      t.string :slug
    end
  end
end
