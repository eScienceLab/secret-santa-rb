gets.split(',').map(&:strip).shuffle.tap { |names| names.zip(names.rotate) }.each { |giver, receiver| File.write("#{giver}.txt", "#{receiver}\n") } }
