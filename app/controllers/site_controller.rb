class SiteController < ApplicationController
  before_filter :load_user
  before_filter :authenticate_user, :except => [:index]
  def index
  end
  def checkout
  end
  def search
  end
end
