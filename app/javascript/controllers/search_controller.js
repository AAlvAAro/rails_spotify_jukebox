import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  connect() {
  }
  
  filterByMuscle(event) {
    const muscleId = event.target.getAttribute('data-id')
    const currentUrl = new URL(window.location)
    currentUrl.searchParams.set('muscle', muscleId)
    window.location.href = currentUrl.toString()
  }

  filterByEquipment(event) {
    const equipmentId = event.target.getAttribute('data-id')
    const currentUrl = new URL(window.location)
    currentUrl.searchParams.set('equipment', equipmentId)
    window.location.href = currentUrl.toString()
  }
}
