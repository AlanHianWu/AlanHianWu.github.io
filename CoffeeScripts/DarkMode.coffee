Dark = ->
    console.log 'click! Dark Function'
    document.body.classList.toggle "toggleDarkMode"


element = document.getElementById "button"
if element
    element.addEventListener "click", Dark
    console.log "added"
else
    console.log "Failed!"
