class PaintingsController < ApplicationController
  def index
    if params.key? :artist_id
      @paintings = Painting.where(artist_id: params[:artist_id]) #artist_paintings_path
    elsif params.key? :museum_id
      @paintings = Painting.where(museum_id: params[:museum_id]) #museum_paintings_path
    elsif params.key? :q
      @paintings = Painting.search(params[:q]) #must add to model since its a class method
    else
      @paintings = Painting.all #paintings_path (paintings index)
    end
  end
end
