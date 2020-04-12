require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/PostsController'

require './models/Post'

map('/') {run ApplicationController}
map ('/posts') {run PostController}
