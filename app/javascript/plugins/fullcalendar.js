import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import listPlugin from '@fullcalendar/list';

const calendar = () => {
  const calendarEl = document.getElementById('calendar');
  if (calendarEl) {
    document.addEventListener('DOMContentLoaded', function() {
      const calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin, listPlugin ],
        events: '/api/events',
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
          // eventRow.append(`<td class='fc-list-item-title fc-widget-content'>${info.event.extendedProps.description}</td>`);
        }
      });

      calendar.render();
    });
  }
}

export default calendar;
