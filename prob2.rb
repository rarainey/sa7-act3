$doors = {'1' => 5, '2' => 10, '3' => 15}

def user_input()
    puts "Choose a room (1-3) to enter or 'exit' to end the game: "
    gets.chomp
end

def add_points(choice, user_points)
    door_points = $doors["#{choice}"]
    if door_points.nil?
        puts "Invalid Input.\n "
    else
        user_points += door_points
        puts "You entered Room #{choice} and earned #{door_points}.\n "
    end
    return user_points
end

puts "Welcome to the Adventure Game!"
user_points = 0
puts "You have #{user_points} points.\n "

choice = user_input()
while choice != 'exit'
    user_points = add_points(choice, user_points)
    choice = user_input()
end

puts "Game over! You collected a total of #{user_points} points."
