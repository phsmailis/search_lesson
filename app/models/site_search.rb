class SiteSearch
  def self.search(term)
    formatted_term = "%#{term}%"

    tracks = wildcard_search(
    Track, "title LIKE ?", formatted_term)

    releases = wildcard_search(
    Release, "title LIKE ?", formatted_term)

    artists = wildcard_search(
    Artist, "name LIKE ?", formatted_term)

    tracks + releases + artists
  end

  private

  def self.wildcard_search(klass, query, term)
    klass.where(query, term)
  end


end
