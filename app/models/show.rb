class Show < ActiveRecord::Base
    has_many :songs
    belongs_to :band
end