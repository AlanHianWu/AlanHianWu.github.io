Dark = ->
    console.log 'click! Dark Function ran'
    document.body.classList.toggle "toggleDarkMode"


element = document.getElementById "button-darkMode"
if element
    element.addEventListener "click", Dark
else
    console.log "Failed!"
