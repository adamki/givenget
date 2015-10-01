class GivesController < ApplicationController
  before_action :verify_logged_in, only:[:new]

  def new
    @give = Give.new
  end

  def create

  end

end
