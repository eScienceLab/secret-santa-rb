require 'base64'

last_year = Dir["#{Time.now.year - 1}/*"].map { |file| [file.match(/([A-z]+)\.txt/)[1], Base64.decode64(File.read(file)).chomp] }
this_year = []

names = gets.split(',').map(&:strip)
loop do
  names.shuffle!
  this_year = names.zip(names.rotate)
  break if last_year.none? { |x| this_year.include?(x) }
end

this_year.each { |giver, receiver| File.write("#{giver}.txt", "#{receiver}\n") }
