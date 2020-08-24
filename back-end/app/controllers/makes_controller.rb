class MakesController < ApplicationController
    def index 
        makes = Make.all 
        render json: makes.to_json

    end 

    def show 
        make = Make.find_by(make_name: params[:id])
        render json: make.to_json(include: {models: {only: :modelname }}, only: [:make_name, :make_id])
                # render json: categories.to_json(include: {items: {only: [:name, :description, :price]}}, only: :name)

    end 
end
