class CreateDarbiniekis < ActiveRecord::Migration[6.1]
  def change
    create_table :darbiniekis do |t|
      t.timestamp :starta_laiks
      t.timestamp :beigu_laiks
      t.string :vards
      t.string :uzvards
      t.string :epasts
      t.string :telefons

      t.timestamps
    end
  end
end
