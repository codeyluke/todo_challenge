require_relative "../../config/application.rb"

class ChangingDescription < ActiveRecord::Migration[5.2]
  def up
    change_column :tasks, :status, :string, default: "undone"
    Task.all.each {|t|
        if t.status == "t"
            t.update(status: "done")
        else
            t.update(status: "undone")
        end
    }
  end

  def down
    change_column :tasks, :status, :boolean, default: false
    Task.all.each {|t|
        t.update(status: false)
    }
  end
end