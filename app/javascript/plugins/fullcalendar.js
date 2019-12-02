import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import listPlugin from '@fullcalendar/list';


const calendar = () => {

  const calendarEl = document.getElementById('calendar');
  const todoEl = document.getElementById('todolist');

  if (calendarEl) {
    document.addEventListener('DOMContentLoaded', function() {
      const calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin],
        events: '/api/events',
        defaultView: 'dayGridMonth',
      });

      calendar.render();
    });
  }

  if (todoEl) {
   document.addEventListener('DOMContentLoaded', function() {
    const calendar = new Calendar(todoEl, {
      plugins: [ dayGridPlugin, listPlugin ],
      events: '/api/events',
      header: {
          left:   'title',
          center: '',
          right:  'prev,next'
      },
      defaultView: 'listWeek',
      eventClick: function(info) {
        console.log(info.event.extendedProps.todo_id);

        // Creer un lien et y passer l'id de la todo à marquer comme done.
        // "<a href="/todos/${}/mark_as_done">Mark as done !</a>"
      },
      eventRender: function(info) {
        const titleDiv = info.el.querySelector('.fc-list-item-title');
        titleDiv.parentElement.firstChild.remove();
        // const eventRow = info.el.querySelector('.fc-list-item')
        const eventRow = titleDiv.parentElement;
        info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'>${info.event.extendedProps.description}</td>`);
        // const check = info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'><i class="fas fa-check "></i></td>`);
        info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'><i class="fas fa-times"></i></td>`);
        const check = info.el.querySelector('.fas.fa-times');
        console.log(check);
        check.addEventListener('click', function(event){
          //event.currentTarget.parentElement.innerHTML = `<td class='fc-list-item-title fc-widget-content'><i class="fas fa-check"></i></td>`
          event.currentTarget.parentElement.innerHTML = `<a href="/api/events/${info.event.extendedProps.todo_id}"></a>"<td class='fc-list-item-title fc-widget-content'><i class="fas fa-check"></i></td>`
          })
        // eventRow.append(`<td class='fc-list-item-title fc-widget-content'>${info.event.extendedProps.description}</td>`);
        const form = document.getElementById('form');
        }
      });

      calendar.render();
    });
  }
}





export default calendar;
