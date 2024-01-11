import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  search(e) {
    e.preventDefault();
    clearTimeout(this.timeout);
    this.timeout = setTimeout(() => {
      let formData = new FormData(this.element);
      fetch('/searches', {
        method: 'POST',
        body: formData
      }).then(response => response.json())
        .catch((error) => {
          console.error('Error:', error);
        });
    }, 5000);
  }
}
