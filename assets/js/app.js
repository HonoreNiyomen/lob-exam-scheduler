// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {
  longPollFallbackMs: 2500,
  params: {_csrf_token: csrfToken}
})

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", _info => topbar.show(300))
window.addEventListener("phx:page-loading-stop", _info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket

document.addEventListener('DOMContentLoaded', () => {
  // Mobile menu toggle
  const mobileMenuButton = document.querySelector('.mobile-menu-button')
  const mobileMenu = document.querySelector('.mobile-menu')

  if (mobileMenuButton && mobileMenu) {
    mobileMenuButton.addEventListener('click', () => {
      mobileMenu.classList.toggle('hidden')
      mobileMenu.classList.toggle('show')
    })
  }

  // Sidebar dropdowns
  document.querySelectorAll('[data-dropdown-toggle]').forEach(button => {
    button.addEventListener('click', (e) => {
      e.stopPropagation();
      const dropdownId = button.getAttribute('data-dropdown-toggle');
      const menu = document.querySelector(`[data-dropdown-menu="${dropdownId}"]`);
      const icon = button.querySelector('.fa-chevron-down');
      
      // Close other dropdowns
      document.querySelectorAll('[data-dropdown-menu]').forEach(dropdown => {
        if (dropdown !== menu) {
          dropdown.classList.add('hidden');
          const otherIcon = document.querySelector(`[data-dropdown-toggle="${dropdown.getAttribute('data-dropdown-menu')}"] .fa-chevron-down`);
          if (otherIcon) otherIcon.style.transform = 'rotate(0deg)';
        }
      });

      menu.classList.toggle('hidden');
      if (icon) {
        icon.style.transform = menu.classList.contains('hidden') ? 'rotate(0deg)' : 'rotate(180deg)';
      }
    });
  });

  // Close dropdowns when clicking outside
  document.addEventListener('click', () => {
    document.querySelectorAll('[data-dropdown-menu]').forEach(menu => {
      menu.classList.add('hidden');
      const icon = document.querySelector(`[data-dropdown-toggle="${menu.getAttribute('data-dropdown-menu')}"] .fa-chevron-down`);
      if (icon) icon.style.transform = 'rotate(0deg)';
    });
  });
})