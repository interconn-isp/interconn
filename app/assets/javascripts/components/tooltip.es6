document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('[data-toggle="tooltip"]').forEach((element) => {
    $(element).tooltip();
  });
});
