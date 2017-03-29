class SearchController < ApplicationController

def index
  @search = Search.search(params[:search])
end

end
