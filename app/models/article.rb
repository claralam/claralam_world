class Article < ApplicationRecord
    validates_presence_of :title, :content
    validates_numericality_of :category_id
    belongs_to :category
    scope :active, 			 -> { where('active = ?', true) }
  	scope :alphabetical, -> { order('title') }
end
