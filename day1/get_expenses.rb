def get_file_contents
  file = File.open("./expense_report.txt")
  file.readlines.map(&:chomp).map(&:to_i)
end
