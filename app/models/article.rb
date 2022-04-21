class Article < ApplicationRecord
    validates_presence_of :title, :content
    belongs_to :category
    scope :active, 			 -> { where('active = ?', true) }
  	scope :alphabetical, -> { order('title') }
end
