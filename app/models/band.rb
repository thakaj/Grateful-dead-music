class Band < ActiveRecord::Base
    has_many :shows
    has_many :songs, through: :shows
end