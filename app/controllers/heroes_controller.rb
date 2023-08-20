class HeroesController < ApplicationController

    def index
        heroes = Hero.all
        render json: heroes, except: [:created_at, :updated_at]
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, except: [:created_at, :updated_at], include: { powers: { except: [:created_at, :updated_at] }}
    end
end
