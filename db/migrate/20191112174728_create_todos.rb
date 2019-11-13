class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.boolean :done

      t.integer :list_id

      t.timestamps
    end
  end
end
