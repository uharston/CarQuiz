class CarsController < ApplicationController
    def index 
        cars = Car.all 
        render json: cars.to_json(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model])
        # render json: categories.to_json(include: {items: {only: [:name, :description, :price]}}, only: :name)

    end 

    def show 
        car = Car.find_by(make: params[:id])
        render json: car.to_json(only: [:id, :make, :model])
    end 
end
