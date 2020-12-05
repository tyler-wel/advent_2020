def get_file_contents
  file = File.open("./expense_report.txt")
  file.readlines.map(&:chomp).map(&:to_i)
end

def find_2020_sum
  data = get_file_contents

  while data.count > 0
    num = data.shift

    data.each do |check|
      return num, check if num + check == 2020
    end
  end
end

def run
  start_time = Time.now

  first, second = find_2020_sum

  end_time = Time.now

  puts "The two numbers are #{first} and #{second} "
  puts "The product is #{first * second}"

  puts "Took #{end_time - start_time} seconds"
end

run
