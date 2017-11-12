class PagesController < ApplicationController
  def home
  @catagories = %w(indian sushi portugese)
  end

  def about
  end

  def contact
  end


end
