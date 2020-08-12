# Simplicity

def log_to_console(args)
  if args.length > 1
    if args[1] == 'warn'
      puts 'WARN: ' + args[0]
    elsif rgs[1] == 'error'
      puts 'ERROR: ' + args[0]
    else
      puts args[0]
    end
  end
end

args = ['A message', 'warn']
log_to_console(args)



def log_to_console(message, level = :info)
  if level == :warn
    puts 'WARN: ' + message
  elsif level == error
    puts 'ERROR: ' + message
  else
    puts message
  end
end

log_to_console('A message', :warn)



def log_to_console(message, level)
  puts "#{level}: " + message
end

log_to_console('A message', :warn)



def log_to_console(message, level = :info)
  puts "#{level.to_s.upcase}: #{message}"
end

log_to_console('A message', :warn)
log_to_console('Another message', :anything_we_want)
log_to_console('Another message')
