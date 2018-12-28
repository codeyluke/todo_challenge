require_relative "../../config/application.rb"

class ChangingTableName < ActiveRecord::Migration[5.2]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    rename_table :todos, :tasks
  end
end