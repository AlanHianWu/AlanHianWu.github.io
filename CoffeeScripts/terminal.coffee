# functions goes here
handleForm = (event) ->
    textInput = document.getElementById('terminalTextInput').value.trim()

    clearInput()
    addTextResult(textInput)

    if textInput == "help"
        addTextResult("Working on it, hopfully i'll have the APIs working")

    event.preventDefault()


clearInput = ->
    document.getElementById("terminalTextInput").value = "me/somedate/placeholder>"

clearDisplay = ->
    document.getElementById("terminalResults").innerHTML = ""


addTextResult = (text)->
    document.getElementById("terminalResults").innerHTML += "<p>" + text + "</p>"





# sequence goes here

# document.getElementById('terminalTextInput').focus()

form = document.getElementById("terminalInput")
form.addEventListener 'submit', handleForm
document.getElementById('terminalTextInput').value = 'me/somedate/placeholder>'


