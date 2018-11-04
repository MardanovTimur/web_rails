require 'open-uri'
require 'json'

class TrackController < ApplicationController

  def index
    url = "#{REST_URL}?name_filter=#{params[:search]}"
    response = open(url).read
    @tracks = JSON.parse(response)
  end

end
