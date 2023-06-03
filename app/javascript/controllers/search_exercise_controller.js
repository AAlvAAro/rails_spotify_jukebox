import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-exercise"
export default class extends Controller {
  connect() {
    console.log('Exercise controller connected')
  }

  search(event) {
    const q = event.target.value
  }

  filterByMuscle(event) {
    const muscle = event.target.text
  }

  filterByMuscleGroup(event) {
    const muscleGroup = event.target.text
  }
  
  filterByEquipment(event) {
    const equipment = event.target.text
  }
}
