class Track < ActiveRecord::Base
  def display_name
    title
  end
end
