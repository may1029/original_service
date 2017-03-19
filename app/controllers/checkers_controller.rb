# coding: utf-8
class CheckersController < ApplicationController
  def index
  end

  def result
    @weight = params[:weight].to_i * 1.0
    @bmi = 1.0 * params[:weight].to_i / ((params[:height].to_i / 100.0)  ** 2)
    if @bmi < 18.4 then
      @judge = "Too thin"
    elsif @bmi > 18.5 && @bmi < 24.9 then
      @judge = "Just"
    else
      @judge = "Fat!"
    end

    @model = PersonalDatabase.where(height: params[:height])
    # if @model.nil
    #   render '' 
    # end
    #model = PersonalDatabase.where(height: params[:height])
    # render text: @bmi.round(2)
    #BMIの計算
    #PersonalDBと身長の参照
  end

  private
  def checker_params
    params.require(:checker).permit(:height, :weight)
  end

 end
