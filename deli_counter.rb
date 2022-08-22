# Write your code here.
def line queue
    if queue.length == 0
        puts "The line is currently empty."
    else
        list = queue.map.with_index(1) {|name, index| "#{index}. #{name}"}
        puts "The line is currently: #{list.join(" ")}"
    end
end

def take_a_number (queue, element)
    queue << element
    puts "Welcome, #{element}. You are number #{queue.find_index(element)+1} in line."
end

def now_serving queue
    if queue.length == 0
        puts "There is nobody waiting to be served!"
    else   
        puts "Currently serving #{queue[0]}."
        queue.shift
    end
end