class Task < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        %w[name description]
    end
    
    def self.ransackable_associations(auth_object = nil)
        []
    end
    
        
    validates :name, presence: true, length: {maximum: 30}
    belongs_to :user
    has_one_attached :image
end
