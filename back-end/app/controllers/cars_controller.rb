# require 'pry'
class CarsController < ApplicationController
    def index 
        cars = Car.all 
        render json: cars.to_json(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model])
        # render json: categories.to_json(include: {items: {only: [:name, :description, :price]}}, only: :name)

    end 

    def show 
        car = Car.find_by(make: params[:id])
        render json: car.to_json(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model])
    end 

    def update 
        car = Car.find_by(id: params[:id])
        if params[params[:id]][:answer]
            car.update(total_games: (car.total_games += 1), total_correct: (car.total_correct += 1) )
        else 
            car.update(total_games: (car.total_games += 1) )
        end
         
        render json: car.to_json#(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model, :total_games, :total_games_correct])
    end 
end
