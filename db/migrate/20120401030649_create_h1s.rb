class CreateH1s < ActiveRecord::Migration
  def change
    create_table :h1s do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
