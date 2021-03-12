class PrototypesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

 def index
  @prototypes = Prototype.all
 end

 def new
  @prototypes = Prototype.new
end

def create
  Prototype.create(prototype_params)
end

def destroy
  prototype = Prototype.find(params[:id])
  prototype.destroy
end

def edit
end

def update
  prototype = Prototype.find(params[:id])
  prototype.update(prototype_params)
end

def show
end

private
def prototype_params
  params.require(:Prototype).permit(:content, :image).merge(user_id: current_user.id)
end

def set_tweet
  @prototype = Prototype.find(params[:id])
end

def move_to_index
  unless user_signed_in?
    redirect_to action: :index
  end
 end
end
