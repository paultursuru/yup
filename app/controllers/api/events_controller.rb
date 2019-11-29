class Api::EventsController < Api::BaseController
  acts_as_token_authentication_handler_for User

  def index
    @to_dos = current_user.to_dos

    events = @to_dos.map do |todo|
      {
        title: todo.name,
        start: todo.due_at.strftime("%Y-%m-%d"),
        allDay: true,
        extendedProps: {
          description: todo.description,
          todo_id: todo.id,
          done_status: todo.done
        },
        backgroundColor: "#{todo.planted_veggy.planter.color}"
      }
    end

    render json: events
  end



  private

  def to_do_params
    params.require(:to_do).permit(:completed_at, :due_at, :done)
  end

end
