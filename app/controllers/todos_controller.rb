class TodosController < ApplicationController
  def mark_as_done
    @event = ToDo.find(params[:id])
    @event.mark_as_done!
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
