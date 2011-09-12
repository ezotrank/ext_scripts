#!/usr/bin/ruby
# use it ruby csv_to_yml.rb some_file.csv

require 'csv'
# I want csv file
@csv_file = (ARGV[0] ? File.expand_path(ARGV[0]) : exit )

@str_name = @csv_file.match(/.+\/(.+)\..+$/)[1]
puts "---"
CSV.open(@csv_file, 'r', ',') do |row|
  @structura = row and next if row != [] && @structura.nil?
  puts "#{@str_name}_#{row[0]}:"
  @structura.each_with_index { |item, index| puts "  #{item.gsub(/^\s*/,'')}: #{row[index]}" }
end
