import Model from '../../resources/js/Pages/model.js';
import View from '../../resources/js/Pages/view.js';

document.addEventListener('DOMContentLoaded', () => {
  const model = new Model();
  const view = new View();
  model.setView(view);
  view.setModel(model);

  view.render();
});


