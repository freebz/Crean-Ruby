# Avoid Unnecessary Information

# Naming Crutches

# Bad example
class PlayerManager
  def spawn(player_id)
    @players << Player.new(player_id)
  end
end

player_manager = PlayerManager.new
player_manager.spawn(1)



# Good example
class PlayerSpawner
  def spawn(player_id)
    @players << Player.new(player_id)
  end
end

player_spawner = PlayerSpawner.new
player_spawner.spawn(1)
