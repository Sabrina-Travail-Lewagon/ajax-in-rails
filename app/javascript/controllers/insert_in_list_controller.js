import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["reviews", "myform"]
  static values = { attribut: String}
  connect() {
    // console.log("Hello from insert_in_list")
    // console.log('controller', this.element)
    // console.log('reviews', this.reviewsTarget)
    // console.log('Mon formulaire', this.myformTarget)
    this.csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute("content")
  }

  send(event){
    event.preventDefault()
    // console.log(event)
    // console.log(this.myformTarget.action)
    // const url = this.myformTarget.action
    // const options = {
    //   method: "POST",
    //   headers: { "Accept": "application/json", "X-CSRF-Token": this.csrfToken },
    //   body: new FormData(this.myformTarget)
    // }
    fetch(this.myformTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": this.csrfToken },
      body: new FormData(this.myformTarget)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      console.log(data)
      // console.log(this.reviewsTarget)
      if (data.my_inserted_review) {
        this.reviewsTarget.insertAdjacentHTML(this.attributValue, data.my_inserted_review)
      }
      this.myformTarget.outerHTML = data.my_form

    })
  }
}
