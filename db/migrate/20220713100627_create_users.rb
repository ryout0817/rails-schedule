class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.date :start_day
      t.date :finish_day
      t.boolean :all_day
      t.text :introduction

      t.timestamps
    end
  end
end
