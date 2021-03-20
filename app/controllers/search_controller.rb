class SearchController < ApplicationController
		def search
    if params[:term].nil?
      @posts = []
    else
      term = params[:term]
      @posts = Post.search term, fields: [:text], highlight:  true
    end
  end

end
