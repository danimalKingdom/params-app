class ParamsExamplesController < ApplicationController

  def query_params_method
    @message = params[:my_message]
    @second_message = params[:second_message]
    render "query_params.html.erb"
  end

  def name_method
    @my_name = params[:my_name]
    render "name.html.erb"
  end

  def number_method
    decided_number = 45
    @guessed_number = params[:guess].to_i
    if @guessed_number > decided_number
      @message = "You are too high"
    elsif 
      @guessed_number < decided_number
      @message = "You are too low"
    else
      @message = "You are correct"
    end
    render "number.html.erb"
  end

  def url_segment_params_method
    @value = params[:wildcard]
    render "url_segment_params.html.erb"

  end

  def form_params
    render "form.html.erb"
  end

  def form_result
    @value = params[:form_message]
    render "form_result.html.erb"
  end










end
