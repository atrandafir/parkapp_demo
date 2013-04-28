class SiteController < ApplicationController
  before_filter :load_user
  before_filter :authenticate_user, :except => [:index]
  
  def index
  end
  
  def checkout
    @parking_lot = ParkingLot.new
    @parking_lot.user_id=session[:user_id]
    @parking_lot.latitude=41.3962294
    @parking_lot.longitude=2.1940526999999292
  end
  
  def processcheckout
    @parking_lot = ParkingLot.new(params[:parking_lot])
    if @parking_lot.save
      flash[:notice] = "Gracias, has enviado la plaza correctamente"
      flash[:color]= "valid"
      redirect_to(root_path)
      return
    else
      flash[:notice] = "Por favor corrige los errores del formulario"
      flash[:color]= "invalid"
      render "checkout"
      return
    end
    
  end
  
  def search
  end
end
