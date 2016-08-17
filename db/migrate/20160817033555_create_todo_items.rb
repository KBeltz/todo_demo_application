class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :item
      t.references :todo_list, index: true, foreign_key: true
    end
  end
end
