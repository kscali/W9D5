class Album < ApplicationRecord
    validates :title, :year, :band_id, presence: true 
    validates :live, default: false
    
    belongs_to :band


end
