class Song < ActiveRecord::Base
    belongs_to :show
    has_one :band, through: :show
    
    def self.render_all
        self.all.map { |s| {
          name: s.name,
          shows_id: s.show_id
        }}
    end

    def self.find_by_path(path)
        id = path.path.split("/notes/")[1].to_i
        Song.find_by_id(id)
    end

end