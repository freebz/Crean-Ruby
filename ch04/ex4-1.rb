# Using a Variable

class Player
  attr_accessor :time_until_spawn, :health
end

# Boolean logic directly in an IF statement
def respawn(player)
  if player.time_until_spawn <= 0 && player.health == 0
    respawn_at_base
  end
end

def respawn_at_base
  puts 'Player respawned at base'
end

player = Player.new
player.time_until_spawn = 0
player.health = 0

respawn(player)



class Player
  attr_accessor :time_until_spawn, :health
end

# Boolean logic stored in a variable
def respawn(player)
  ready_to_spawn = player.time_until_spawn <= 0 &&
    player.health == 0
  respawn_at_base if respawn_at_base
end

def respawn_at_base
  puts 'Player respawned at base'
end

player = Player.new
player.time_until_spawn = 0
player.health = 0

respawn(player)



class User
  attr_accessor :type, :enabled

  def initialize(type, enabled)
    @type = type
    @enabled = enabled
  end

  def editor?
    type == :editor
  end

  def disabled?
    !enabled
  end
end

user = User.new(:editor, true)

if !user.nil? && user.editor? && !user.disabled?
  puts 'The user is allowed to edit articles'
end



def enable_editing
  user_exists = !user.nil?
  can_edit = user.editor? && !user.disabled?

  if user_exists && can_edit
    # code to enable editing
  end
end



def enable_editing
  user_exists = !user.nil?
  return if user_exists

  can_eidt = user.editor? && !user.disabled?

  if user_exists && can_eidt
    # code to enable editing
  end
end
