require_relative "../../config/application.rb"

class CreateTodoTable < ActiveRecord::Migration[5.2]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :todos do |t|
      t.string :description
      t.string :status
      t.timestamps
    end
  end
end
