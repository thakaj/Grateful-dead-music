class Song < ActiveRecord::Base
    belongs_to :band
    
    def self.render_all
        self.all.map { |s| {
          name: s.name,
          band_id: s.band_id
        }}
    end

    def self.find_by_path(path)
        id = path.path.split("/notes/")[1].to_i
        Song.find_by_id(id)
    end

end