class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    actor = params[:id]
    @actor = Actor.find_by(id: actor)
    render "show.json.jb"
  end

  def create
    @actor = Actor.new
    @actor.first_name = params[:first_name]
    @actor.last_name = params[:last_name]
    @actor.known_for = params[:known_for]
    @actor.save
    render "show.json.jb"
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name = @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name = @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for = @actor.known_for
    @actor.save
    render "show.json.jb"
    @actor.save
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.delete
    render json: "Successfully Deleted!"
  end



end
