def data
  File.readlines('input.txt', chomp: true)
end

def first_part
  array = data
  depth = 0
  horizontal = 0
  array.each do |line|
    number = line.scan(/\d+/).join('').to_i
    if line.match(/forward (\d+)/)
      horizontal += number
    elsif line.match(/down (\d+)/)
      depth += number
    elsif line.match(/up (\d+)/)
      depth -= number
    end
  end
  depth * horizontal
end

def second_part
  array = data
  depth = 0
  horizontal = 0
  aim = 0
  array.each do |line|
    number = line.scan(/\d+/).join('').to_i
    if line.match(/forward (\d+)/)
      horizontal += number
      depth += aim * number
    elsif line.match(/down (\d+)/)
      aim += number
    elsif line.match(/up (\d+)/)
      aim -= number
    end
  end
  depth * horizontal
end

# p first_part
p second_part
