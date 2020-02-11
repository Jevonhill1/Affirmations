class Video < ApplicationRecord
    has_one_attached :clip
    has_many_attached :thumbnail
 
end
