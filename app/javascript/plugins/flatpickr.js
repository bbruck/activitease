import flatpickr from "flatpickr";
// import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';
import confirmDatePlugin from 'flatpickr/dist/plugins/confirmDate/confirmDate';

const initFlatpickr = () => {
  flatpickr('.datepicker', {
    altInput: true,
    enableTime: true,
    // "plugins": [new rangePlugin({ input: "#range_end" })]
    "plugins": [
      new confirmDatePlugin({})]
  });
}

export { initFlatpickr };
