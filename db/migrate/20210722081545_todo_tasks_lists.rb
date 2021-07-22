class TodoTasksLists < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :email
      t.text :tasks_todo
    end
  end
end
