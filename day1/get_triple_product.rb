require_relative "./get_expenses"

def find_2020_triple_sum
  data = get_file_contents

  while data.count > 0
    first = data.shift

    # Bad tyler, no nested loops
    data.each_with_index do |second, i|
      (data - [data[i]]).each do |third|
        return first, second, third if first + second + third == 2020
      end
    end
  end
end

def run
  start_time = Time.now

  first, second, third = find_2020_triple_sum

  end_time = Time.now

  puts "The three numbers are #{first}, #{second}, and #{third}"
  puts "The product is #{first * second * third}"

  puts "Took #{end_time - start_time} seconds"
end

run
