class Team < ApplicationRecord
  # Relationships
  has_many :sponsors

  # Extensions
  has_one_attached :team_photo

  def to_s
    name
  end

  def players_as_paragraph
    players.join("\n")
  end

  def players_as_paragraph=(text)
    self.players = text.split("\n")
  end
end
