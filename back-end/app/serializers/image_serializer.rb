class ImageSerializer
  include JSONAPI::Serializer
  belongs_to :car
  attributes :url, :car_id
end
