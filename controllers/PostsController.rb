class PostController < ApplicationController

    get '/' do
        @posts = Post.all

        @posts.to_json
    end

    # CREATE

    post '/' do
        payload_body = request.body.read
        payload = JSON.parse(payload_body).symbolize_keys

        @post = Post.new
        @post.name = payload[:name]
        @post.body = payload[:body]
        @post.song_url = payload[:song_url]
        @post.author = payload[:author]
        @post.release_date = payload[:release_date]
        @post.save

        @post.to_json
    end

    # UPDATE

    put '/:id' do
        p 'put route hit'
        p '------'
        p params
        p '------'

        payload_body = request.body.read
        payload = JSON.parse(payload_body).symbolize_keys
        p 'payload'
        @post = Post.find_by(id: params['id'])
        @post.name = payload[:name]
        @post.body = payload[:body]
        @post.song_url = payload[:song_url]
        @post.author = payload[:author]
        @post.date = payload[:author]
        @post.save

        @post.to_json
    end

    # DELETE
    delete '/:id' do
        p 'delete route hit'

        @post = Post.find_by(id: params[:id])
        @post.delete
        p "Deleted post number #{params[:id]}"
    end

    # SHOW

    get '/:id' do
        @post = Post.find_by(id: params[:id])
        @post.to_json
    end

end
