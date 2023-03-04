class Sponsor < ApplicationRecord
  # Relationships
  belongs_to :team

  # Extensions
  has_one_attached :image

  def to_s
    name
  end
end
