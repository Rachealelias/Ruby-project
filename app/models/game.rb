class Game < ActiveRecord::Base
    belongs_to :user
    validates :score, :total_time, presence: true

end
