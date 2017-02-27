# coding: utf-8
class CheckersController < ApplicationController
  def index
  end

  def result
    @bmi = 1.0 * params[:weight].to_i / ((params[:height].to_i / 100.0)  ** 2)
    @model = PersonalDatabase.where(height: params[:height])
    # render text: @bmi.round(2)
    #BMIの計算
    #PersonalDBと身長の参照
  end

  private
  def checker_params
    params.require(:checker).permit(:height, :weight)
  end

 end
