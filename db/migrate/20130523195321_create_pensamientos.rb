class CreatePensamientos < ActiveRecord::Migration
  def change
    create_table :pensamientos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
