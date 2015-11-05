class SiteController < ApplicationController
  def home
  end

  def result
    # render plain: params.inspect
    @term = params["term"]
    @results = SiteSearch.search @term

  end

end
