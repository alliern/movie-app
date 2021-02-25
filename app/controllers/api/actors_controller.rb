class Api::ActorsController < ApplicationController

def first_actor
  @actor = Actor.find_by(id: 1)
  render "first_actor.json.jb"

end
