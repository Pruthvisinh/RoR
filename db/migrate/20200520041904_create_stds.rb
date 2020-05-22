class CreateStds < ActiveRecord::Migration[6.0]
  def change
    create_table :stds do |t|
      t.string :name
      t.string :class_teacher
      t.string :division

      t.timestamps
    end
  end
end
