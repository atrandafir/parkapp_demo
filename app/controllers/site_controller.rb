class SiteController < ApplicationController
  before_filter :load_user
  before_filter :authenticate_user, :except => [:index]
  
  def index
  end
  
  def checkout
    @parking_lot = ParkingLot.new
  end
  
  def processcheckout
    @parking_lot = ParkingLot.new(params[:user])
    if @parking_lot.save
      flash[:notice] = "Has enviado la plaza correctamente"
      flash[:color]= "valid"
    else
      flash[:notice] = "Por favor corrige los errores del formulario"
      flash[:color]= "invalid"
    end
    render "checkout"
  end
  
  def search
  end
end
