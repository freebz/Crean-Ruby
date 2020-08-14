# Classes

# Purpose

def new_user_add_coins
  # code
end

def email_new_user_welcome(email)
  # send an email
end

user_email = 'example@example.com'
new_user_add_coins
email_new_user_welcome(user_email)



class UserSetup
  def initialize(user)
    @user = user
  end

  def execute
    add_coins
    send_welcome
  end

  private
  def add_coins
    # add coins to their account
  end

  def send_welcome
    email = @user.email
    # send an email
  end
end

user_setup = UserSetup.new(user)
user_setup.execute
