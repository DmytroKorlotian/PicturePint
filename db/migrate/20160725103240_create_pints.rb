class CreatePints < ActiveRecord::Migration[5.0]
  def change
    create_table :pints do |t|
      t.string :description

      t.timestamps
    end
  end
end
