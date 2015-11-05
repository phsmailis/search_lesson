class Artist < ActiveRecord::Base
  def display_name
    name
  end
end
