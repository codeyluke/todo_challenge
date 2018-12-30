# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

system "clear"

# ====================== Add into the List =====================================
def add_todo(item)
    Task.create(description: "#{item}")
    todos_list
end

# ====================== Delete from the List ==================================
def delete(num)
    tasks = Task.all
    num = num.to_i
    if num > 0
        selected_task = tasks[num - 1]
        selected_task.destroy
        todos_list 
    end    
end

# ======================== Show the To Do List ==================================
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

# ======================== Completed from the List ==================================
def update_list(num)
    tasks = Task.all 
    num = num.to_i
    if num > 0
        selected_task = tasks[num - 1]
        selected_task.update(status: "done")
        todos_list 
    end   
end

ARGV

case ARGV[0]
when "add"
    add_todo(ARGV[1])
when "delete"
    delete(ARGV[1])
when "done"
    update_list(ARGV[1])
when "show"
    todos_list
end