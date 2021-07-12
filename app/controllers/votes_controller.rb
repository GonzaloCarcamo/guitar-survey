class VotesController < ApplicationController

  before_action :initialize_vote, only: [:index]
  
  def index
    if 
      @true = Vote.where("option = true").count
      @false = Vote.where("option = false").count
    end
  end

  def new 
    #@vote = Vote.new 
  end

  def create
    @vote = Vote.new(params[:vote].permit(:option))
    @vote.save
    redirect_to root_path
    
    #@vote = Vote.create(option: params[:vote][:option])

  end

  private
  def initialize_vote
   @vote = Vote.new
  end
end
