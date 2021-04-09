class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :codigo
      t.string :nombre
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
