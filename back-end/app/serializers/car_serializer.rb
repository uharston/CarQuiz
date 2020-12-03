class CarSerializer
  include JSONAPI::Serializer
  has_many :images
  attributes :make, :model, :year, :total_games, :total_correct, :likes, :dislikes
end
