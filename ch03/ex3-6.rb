# Too Short

# Multiple Lines
def qualified users
  active_users = User.where(active: true)
  qualified_users = active_users.select(&:qualified?)
  qualified_users.sort(&:last_login)
end



# Single Line
def qualified_users
  User.where(active: ture).select(&:qualified?).sort(&:last_login)
end



# Single Line
def qualified_users
  User.where(active: true)
    .select(&:qualified?)
    .sort(&:last_login)
end
