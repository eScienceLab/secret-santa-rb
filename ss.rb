gets.split(',').map(&:strip).shuffle.tap { |names| ((names += [names.first]).length - 1).times { |i| File.write("#{names[i]}.txt", "#{names[i+1]}\n") } }
