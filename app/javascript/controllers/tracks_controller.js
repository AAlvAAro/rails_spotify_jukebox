import { Controller } from "@hotwired/stimulus"
// import toastr from 'toastr'

// Connects to data-controller="tracks"
export default class extends Controller {
  // connect() {
  //   document.addEventListener('turbolinks:load', this.initialize.bind(this));
  // }

  async addToPlaylist(event) {
    event.preventDefault()

    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    const trackId = event.currentTarget.dataset.trackId

    const response = await fetch(`/tracks/${trackId}/add_to_playlist`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({ track_id: trackId })
    })

    if (response.ok) {
      const data = await response.json()
      alert(`La cancion ${data.track_name} ha sido agregada al playlist!`)
      event.target.style.display = 'none'
    } else {
      alert('Hubo un error al agregar la cancion al playlist, intenta de nuevo!')
    }
  }

  async removeFromPlaylist(event) {
    event.preventDefault()

    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    const trackId = event.currentTarget.dataset.trackId

    const response = await fetch(`/tracks/${trackId}/remove_from_playlist`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({ track_id: trackId })
    })

    if (response.ok) {
      const data = await response.json()
      alert(`La cancion ${data.track_name} ha sido eliminada del playlist!`)
      window.location.href = `/users/${data.user_id}`
    } else {
      alert('Hubo un error al intentar eliminar la cancion del playlist, intenta de nuevo!')
    }
  }
}