class Rover < ActiveRecord::Base
  has_many :photos
  has_many :cameras

  def to_param
    name.parameterize
  end

  def max_sol
    photos.maximum(:sol)
  end

  def max_date
    photos.maximum(:earth_date)
  end

  def total_photos
    photos.count
  end
end
