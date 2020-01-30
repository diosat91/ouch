import "bulma-calendar/dist/css/bulma-calendar.min.css";
import bulmaCalendar from "bulma-calendar/dist/js/bulma-calendar.min.js";

const activateDatepicker = () => {
  const calendars = bulmaCalendar.attach('[type="date"]');
};

export { activateDatepicker };
