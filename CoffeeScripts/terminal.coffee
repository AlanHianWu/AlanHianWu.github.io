# functions goes here
handleForm = (event) ->
    textInput = document.getElementById('terminalTextInput').value.trim()

    clearInput()
    addTextResult(textInput)

    if textInput == " @me/somedate/placeholder > help".trim()
        addTextResult("Working on it, hopfully i'll have the APIs working and put up some cool things soon")
    if textInput == " @me/somedate/placeholder > clear".trim()
        clearDisplay()

    event.preventDefault()

addPrefix = () ->
    document.getElementById("terminalTextInput").value = " @me/somedate/placeholder > "

    handleInput = (event) ->
        oldvalue = document.getElementById("terminalTextInput").value
    
        if event and event.data == null
            document.getElementById("terminalTextInput").value = " @me/somedate/placeholder > "
        else
            document.getElementById("terminalTextInput").value = oldvalue

    handleInput()
    document.getElementById("terminalTextInput").addEventListener "input", handleInput



clearInput = ->
    document.getElementById("terminalTextInput").value = " @me/somedate/placeholder > "

clearDisplay = ->
    document.getElementById("terminalResults").innerHTML = ""


addTextResult = (text)->
    document.getElementById("terminalResults").innerHTML += "<p>" + text + "</p>"





# sequence goes here

document.getElementById('terminalTextInput').focus()
form = document.getElementById("terminalInput")
form.addEventListener 'submit', handleForm

addPrefix()

# deafult
addTextResult('Welcome to my web terminal nothing much to see so far though, only command is help & clear')
