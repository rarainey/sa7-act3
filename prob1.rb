data = open('data.csv').readlines()
data = data.map {|line| line.split(',')}

# Stripping the new line from the last element of each row. (include? is because strip returns nil on things with no strippable elements.)
data = data.each {|line| line[-1] = line[-1].strip! if line[-1].include? "\n"}

keys = data[0]
data.delete(data[0]) 
hash_array = []

# Loop to make the hash array
data.each do |line|
    row = {}
    (0...line.length).each do |i|
        row.store("#{keys[i]}", line[i])
    end
    hash_array.append(row)
end

p hash_array
    