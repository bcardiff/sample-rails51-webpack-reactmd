class Album < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: { only_integer: true }
  validate :year_range

  def year_range
    if year.present?
      errors.add(:year, "can't be that old") if year < 1970
      errors.add(:year, "can't be in the future") if year > Date.today.year
    end
  end
end
