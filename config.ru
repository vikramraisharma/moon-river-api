require 'sinatra/base'
require 'sinatra/activerecord'

require './controllers/ApplicationController'
require './controllers/PostsController'

require './models/Post'

map('/') {run Sinatra::ApplicationController}
map ('/posts') {run Sinatra::PostController}
