class AffirmationsController < ApplicationController
  def index
    @affirmations = Affirmation.all
  end

  def show
    @affirmation = Affirmation.find(params[:id])
  end
 

  def new
    @affirmation = Affirmation.new
  end

  def edit
    @affirmation = Affirmation.find(params[:id])
  end
  
  #if @affirmation.save
  #  redirect_to @affirmation
  #else
  #  render 'new'
  #end
end
 
def update
  @affirmation = Affirmation.find(params[:id])
 
  if @affirmation.update(affirmaiton_params)
    redirect_to @affirmation
  else
    render 'edit'
  end
end
 
private
  def affirmation_params
    params.require(:affirmation).permit(:text)
  end
#end


