# Extensibility

def log(message, level)
  if level.to_s == 'warning'
    puts "WARN: #{message}"
  elsif level.to_s == 'error'
    puts "ERROR: #{message}"
  end
end

log("An error occurred", :error)



def log(message, level)
  if level.to_s == 'warning'
    puts "WARN: #{message}"
  elsif level.to_s == 'info'
    puts "INFO: #{message}"
  elsif level.to_s == 'error'
    puts "ERROR: #{message}"
  end
end

log("Something happened", :info)



def log(message, level)
  puts "#{level.to_s.upcase}: #{message}"
end

log("An error occurred", :error)
