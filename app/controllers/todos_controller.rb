class TodosController < ApplicationController
  def mark_as_done
    @todo = ToDo.find(params[:id])
    @todo.mark_as_done!
    respond_to do |format|
      format.js
    end
  end

end


  # def update
  #   @to_do = ToDo.find(params[:id])
  #   if @to_do.update(to_do_params)
  #     render self
  #   else
  #     render_error
  #   end
  # end
