import $ from 'jquery'

export default class Tooltip {
  static start() {
    document.addEventListener('turbolinks:load', () => {
      document.querySelectorAll('[data-toggle="tooltip"]').forEach((element) => {
        $(element).tooltip()
      })
    })
  }
}
