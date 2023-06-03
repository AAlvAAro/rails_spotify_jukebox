import { Controller } from "@hotwired/stimulus"
import toastr from 'toastr'

// Connects to data-controller="utils"
export default class extends Controller {
  copyToClipboard(event) {
    event.preventDefault()
    const text = event.target.getAttribute('data-id')

    navigator.clipboard.writeText(text)
  }

  copyProgramUrlToClipboard(event) {
    event.preventDefault()
    const url = window.location.href

    navigator.clipboard.writeText(url)
    toastr.info('El enlace del programa de entrenamiento ha sido copiada!')
  }
}
