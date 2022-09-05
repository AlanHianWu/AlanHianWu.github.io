document.addEventListener 'DOMContentLoaded', ->
    document.getElementsByTagName('form')[0].onsumit = (evt) ->
    
        evt.preventDefault()
        checkword()
        window.scrollTo(0, 150)

document.getElementById('terminalTextInput').focus()

textInput = document.getElementById('terminalTextInput').value.trim()
console.log(textInput)

textResults = document.getElementById("terminalResults").innerHTML


clearInput = ->
    document.getElementById("terminalTextInput").value = ""


