import "bootstrap";
import {calendar, reloadToDo} from '../plugins/fullcalendar';
import '@fullcalendar/core/main.css';
import '@fullcalendar/daygrid/main.css';
import '@fullcalendar/list/main.css';
import { initiateDashboardTab } from '../components/dashboard_tabs'
// import { hidePlantButton } from '../components/planted'

window.reloadToDo = reloadToDo;
calendar();
initiateDashboardTab();
// hidePlantButton();
