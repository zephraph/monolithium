class CurrentCharacter
  def self.all(season)
    season.characters.map(&method(:new))
  end

  attr_reader :character

  delegate :id, :player, :out, to: :character
  delegate :name, to: :player, prefix: true

  def initialize(character)
    @character = character
  end

  def current_picks
    character.picks.map(&CurrentPick.method(:new))
  end
end