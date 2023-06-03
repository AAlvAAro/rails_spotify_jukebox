import { Controller } from "@hotwired/stimulus"
import toastr from 'toastr'

// Connects to data-controller="programs"
export default class extends Controller {
  async subscribe(event) {
    event.preventDefault()

    const csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
    const programId = event.target.getAttribute('data-program-id')
    const userId = event.target.getAttribute('data-user-id')

    const response = await fetch(`/user_programs/${userId}/subscribe`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({
        program_id: programId
      })
    })

    if (response.ok) {
      toastr.success('El programa ha sido agregado a tu lista')
      event.target.style.display = 'none'
    } else {
      toastr.error('Ha habido un error. Por favor intenta mas tarde')
    }
  }
  
  async unSubscribe(event) {
    event.preventDefault()

    const csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
    const programId = event.target.getAttribute('data-program-id')
    const userId = event.target.getAttribute('data-user-id')

    const response = await fetch(`/user_programs/${userId}/unsubscribe`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({
        program_id: programId
      })
    })

    if (response.ok) {
      toastr.success('El programa ha sido eliminado de tu lista')
      event.target.style.display = 'none'
    } else {
      toastr.error('Ha habido un error. Por favor intenta mas tarde')
    }
  }
}
