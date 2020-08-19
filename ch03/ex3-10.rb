# Comments and Refactoring

def accounts_from_file(file_path)
  # read lines from file
  file = File.new(file_path)
  lines = file.readlines

  # Create an account for each line
  accounts = lines.collect do |line|
    # Parse name and email
    account_info = line.parse(',')
    name = account_info[0]
    email = account_info[1]

    # Create an account using the parsed data
    Account.create(name: name, email: email)
  end
end



def accounts_from_file(file_path)
  lines = read_file(file_path)
  create_accounts(lines)
end

def read_file(file_path)
  file = File.new(file_path)
  file.readlines
end

def create_accounts(lines)
  accounts = lines.collect do |line|
    account_params = account_params_from_line(line)
    Account.create(account_params)
  end
end

def account_params_from_line(line)
  account_info = line.parse(',')
  { name: account_info[0], email: account_info[1] }
end
