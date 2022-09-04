Dark = ->
    console.log 'click! Dark Function ran'
    document.body.classList.toggle "toggleDarkMode"


element = document.getElementById "button-darkMode"
if element
    element.addEventListener "click", Dark
    console.log "EventListener added"
else
    console.log "Failed!"
