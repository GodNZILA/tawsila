import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect(){
      // document.querySelectorAll(".sc-menu-item").forEach( (el)=> {
      //   el.addEventListener("click", (e) => {
      //     e.preventDefault();
      //     e.classList.add("animate");
      //     setTimeout(() =>{window.location = select_menu_item.href}, 600);
      //   });

      // })

  }
}
