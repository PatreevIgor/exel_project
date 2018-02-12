# frozen_string_literal: true

class MainController < ApplicationController
  def index
    @result = $result
  end

  def button_get_result
    # $val1 = params[:val1].to_i
    # $val2 = params[:val2].to_i
    # $result = $val1 + $val2
    # respond_to do |format|
    #   format.html { redirect_to root_path, notice: 'Result_ready!' }
    # end
  end

  def button_count_results
    redirect_to projects_path
  end

  private 

  def count_results
    Project.all.each do |project|
      project.result_integer = project.intfield1 + project.intfield2
      project.result_date = project.date2 - project.date1

      project.save
    end
  end
end
