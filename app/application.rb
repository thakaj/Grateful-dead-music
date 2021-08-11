class Application
    def call(env)
      response = Rack::Response.new
      request = Rack::Request.new(env)
      
    if request.path.match(/songs/) && request.patch?
      songs = Song.find_by_path(request.path)

      if songs
        data = JSON.parse(req.body.read)
        songs.update(data)
      else 
        response.write({message: "Invalid data"}.to_json)
        response.status = 422
      end

    elsif request.path.match(/songs/) && request.delete?

        songs = Song.find_by_path(request.path)


        if songs && songs.destroy 

          response.write({songs: songs}.to_json)
          response.status = 200

        else 
          response.write({message: "Song not found"})
          response.status = 404
        end

    elsif request.path.match(/songs/) && request.post?
      data = JSON.parse(request.body.read)
      songs = Song.create(data)

      response.write({songs: songs}.to_json)
      response.status = 200

    elsif request.path.match(/songs/) && request.get?
      

      
  

        response.write({songs: Song.render_all}.to_json)
        response.status = 200

      else
        response.write "path not Found"
        response.status = 404
      end


      response.finish
    end


  end