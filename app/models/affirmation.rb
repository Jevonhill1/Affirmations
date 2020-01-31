class Affirmation < ApplicationRecord
    validates :title, presence: true,
                    length: { minimum: 5 }

                    has_rich_text :text
end
