import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import listPlugin from '@fullcalendar/list';


const calendar = () => {

  console.log("etape 1");
  const calendarEl = document.getElementById('calendar');
  const todoEl = document.getElementById('todolist');

  if (calendarEl) {
    //document.addEventListener('DOMContentLoaded', function() {
      const calendar = new Calendar(calendarEl, {
        plugins: [ dayGridPlugin],
        events: '/api/events',
        defaultView: 'dayGridMonth',
      });

      calendar.render();
    //});
  }

  if (todoEl) {
    //document.addEventListener('DOMContentLoaded', function() {
      reloadToDo(todoEl);
  }
}


const reloadToDo = (todoEl) => {
  console.log("etape 2");
  console.log('HI FROM RELOADTODO');
  todoEl.innerHTML = "";
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
      // console.log(info.event.extendedProps.todo_id);
    },
    eventRender: function(info) {

      const titleDiv = info.el.querySelector('.fc-list-item-title');
      titleDiv.parentElement.firstChild.remove();

      const eventRow = titleDiv.parentElement;
      if (info.event.extendedProps.done_status) {
        var html = `<td class='fc-list-item-title fc-widget-content' ><i class="fas fa-check"></i></a></td>`;
      } else {
        var html = `<td class='fc-list-item-title fc-widget-content'><a href="/todos/${info.event.extendedProps.todo_id}/mark_as_done" data-remote='true' data-todo='${info.event.extendedProps.todo_id}'><i class="fas fa-check light"></i></a></td>`;
      }
      info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'>${info.event.extendedProps.description}</td>`);
      // const check = info.el.insertAdjacentHTML('beforeend', `<td class='fc-list-item-title fc-widget-content'><i class="fas fa-check "></i></td>`);
      info.el.insertAdjacentHTML('beforeend', html);

      // document.querySelectorAll("td.fc-widget-header").forEach((headercal) => {
      //   console.log(headercal);
      //   headercal.setAttribute('colspan', 4);
      //});

    },
  });
  calendar.render();

}



export { calendar, reloadToDo };
