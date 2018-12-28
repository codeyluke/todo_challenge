# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

system "clear"

def add_todo(adding_todo)
    Task.create()
end

def todos_list
    divider = "======================================================="
    puts "No\tDescription\t\t\t\tDone"
    puts divider
    tasks = Task.all
    tasks.each_with_index do |task, index|
        if task.description.size > 23
            inter_string = "#{task.description}\t"
        elsif task.description.size > 15
            inter_string = "#{task.description}\t\t"
        elsif task.description.length > 7
            inter_string = "#{task.description}\t\t\t"
        else 
            inter_string = "#{task.description}\t\t\t\t"
        end

        puts "#{index + 1}\t #{inter_string}\t #{task.status}"
    end
end

