class CreateTarea4s < ActiveRecord::Migration[7.0]
  def change
    create_table :tarea4s do |t|
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
