class Release < ActiveRecord::Base
  def display_name
    "#{title} (#{year})"
  end
end
