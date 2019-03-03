class StaticController < ApplicationController
  def show
    if params[:input] && (1..3999).include?(params[:input].to_i)
      @roman = FindRoman.new(params[:input].to_i).call
    else
      @message = "Please enter between 1 to 3999"
    end
    render params[:page]
  end
end
