def data
  File.readlines('input.txt', chomp: true)
end

def first_part
  array = data
  size = array[0].size
  result = ''
  index = 0
  while index != size
    zero = 0
    one = 0
    array.each do |line|
      line[index] == '0' ? zero += 1 : one += 1
    end
    result += zero > one ? '0' : '1'
    index += 1
  end
  result.to_i(2) * revert_binary(result).to_i(2)
end

def revert_binary(bits)
  bits.chars.map do |number|
    number == '0' ? '1' : '0'
  end.join
end

def second_part
  array = data
  size = array[0].size
  result = ''
  index = 0
  while index != size && array.size > 1
    zero = 0
    one = 0
    array.each do |line|
      line[index] == '0' ? zero += 1 : one += 1
    end
    array = array.select do |line|
      res = zero > one ? '0' : '1'
      res == line[index]
    end
    result += zero > one ? '0' : '1'
    index += 1
  end
  array.first.to_i(2)
end

# Oui oui c'est degeux :3
def second_part_bis
  array = data
  size = array[0].size
  result = ''
  index = 0
  while index != size && array.size > 1
    zero = 0
    one = 0
    array.each do |line|
      line[index] == '0' ? zero += 1 : one += 1
    end
    array = array.select do |line|
      res = zero > one ? '1' : '0'
      res == line[index]
    end
    result += zero > one ? '0' : '1'
    index += 1
  end
  array.first.to_i(2)
end

# p first_part
p second_part * second_part_bis
