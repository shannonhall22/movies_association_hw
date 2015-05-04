class Movie < ActiveRecord::Base

  def director
    return Director.find(self.director_id)
  end
end
