#!/home/dsp2/.local/share/mise/installs/ruby/3.3.4/bin/ruby

File.open('fix_errors.txt', 'r') do |file|
  file.each_line do |line|
    line.split(',').each do |item|
      if item.include?(":")
        time_array = item.chomp.split(':')
        time_in_seconds = time_array[0].to_f * 60.0 + time_array[1].to_f
        print "#{time_in_seconds.round(2).to_s},"
      else
        print "#{item.chomp.to_s},"
      end
    end
    puts
  end
end


