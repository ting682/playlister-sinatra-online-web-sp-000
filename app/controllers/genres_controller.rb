class GenresController < ApplicationController

    get '/genres' do
        @genres = Genre.all
        erb :genres
    end

    get '/genres/:slug' do
        @genre = Genre.find_by_slug(params[:slug])
        #binding.pry
        erb :genre_show
    end
end