class PagesController < ApplicationController
  def home
  end

  before_action :require_user, only: [:index, :show]
  
end
