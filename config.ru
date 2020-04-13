require 'sinatra/base'
require 'sinatra/activerecord'

require './controllers/ApplicationController'
require './controllers/PostsController'

require './models/Post'

map('/') {run ApplicationController}
map ('/posts') {run PostController}
