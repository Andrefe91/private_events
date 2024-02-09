class CreateParties < ActiveRecord::Migration[7.1]
  def change
    create_table :parties do |t|
      t.string :place
      t.date :date

      t.timestamps
    end
  end
end
