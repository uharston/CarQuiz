class Car < ApplicationRecord
    has_many :images 

    def self.total_games_played
        self.all.map { |e| e.total_games }.reduce(:+)
    end

    def total_incorrect 
        self.total_games - self.total_correct 
    end

    def percentage_correct 
        if self.total_correct == 0 
            "0%"
        else
            decimal = (self.total_correct.to_f / self.total_games.to_f)
            integer = (decimal * 100).to_i 
            integer.to_s + "%"
        end
    end 
end
