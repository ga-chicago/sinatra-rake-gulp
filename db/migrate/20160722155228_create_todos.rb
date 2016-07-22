class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |table|
      table.string :content
    end
  end
end
