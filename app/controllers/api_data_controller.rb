# require "open-uri"

# class ApiDataController < ApplicationController

#   def index
#     url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"
#     response = URI.open(url).read
#     api_data = JSON.parse(response)
#       data.each do |movie|
#         Movie.create(
#           title: movie[:title]
#         )
#       end
#     if params[:search_query]
#       @api_data = @api_data.select { |f| f["title"].downcase.include?(params[:search_query].downcase) }
#     end
#   end
# end
