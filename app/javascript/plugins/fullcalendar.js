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
        defaultView: 'listDay',
        eventClick: function(info) {
          console.log(info.event.extendedProps.todo_id);
          // Creer un lien et y passer l'id de la todo à marquer comme done.
          // "<a href="/todos/${}/mark_as_done">Mark as done !</a>"
        }
      });

      calendar.render();
    });
  }
}

export default calendar;
