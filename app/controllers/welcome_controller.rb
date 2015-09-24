class WelcomeController < ApplicationController
  def index

  end
  def about
    @content = (AboutContent.new).generate
  end
end
