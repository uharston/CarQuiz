# require 'pry'
class CarsController < ApplicationController
    def index 
        cars = Car.all 
        render json: cars.to_json(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model, :likes, :dislikes])
        #render json: CarSerializer.new(cars).serializable_hash.to_json
    end 

    def game 
        cars = Car.all.sample(10)
        render json: CarSerializer.new(car).serializable_hash.to_json
        #render json: cars.to_json(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model])
    end 

    def show 
        car = Car.find_by(id: params[:id])
        # render json: CarSerializer.new(car).serializable_hash.to_json
        render json: car.to_json(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model, :likes, :dislikes])
    end 

    def update 
        
        car = Car.find_by(id: params[:id])
       
        if params[:like]
            car.update(likes: (car.likes += 1) )
        elsif params[:dislike]
            car.update(likes: (car.dislikes += 1))
        elsif params[:answer]
            car.update(total_games: (car.total_games += 1), total_correct: (car.total_correct += 1) )
        else 
            car.update(total_games: (car.total_games += 1) )
        end
         
        render json: car.to_json#(include: {images: {only: [:url, :car_id]}}, only: [:id, :make, :model, :total_games, :total_games_correct])
    end 
end
