# functions goes here

handleForm = (event) ->
    textInput = document.getElementById('terminalTextInput').value.trim()

    scrollDown()
    clearInput()
    addTextResult(textInput)




    if textInput == global.concat("help").trim()

        addRawTextResult("Working on it, hopfully i'll have the APIs working and put up some cool things soon")
    
    if textInput == global.concat("clear").trim()
        clearDisplay()

    event.preventDefault()

addPrefix = () ->
    document.getElementById("terminalTextInput").value = global

    handleInput = (event) ->
        oldvalue = document.getElementById("terminalTextInput").value
    
        if event and event.data == null
            document.getElementById("terminalTextInput").value = global
        else
            document.getElementById("terminalTextInput").value = oldvalue

    handleInput()
    document.getElementById("terminalTextInput").addEventListener "input", handleInput


clearInput = ->
    document.getElementById("terminalTextInput").value = global


clearDisplay = ->
    document.getElementById("terminalResults").innerHTML = ""


addTextResult = (text)->
    document.getElementById("terminalResults").innerHTML += "<p>" + time() + "  " + text + "</p>"

addRawTextResult = (text)->
    document.getElementById("terminalResults").innerHTML += "<p>" + text + "</p>"

scrollDown = ->
    terminal = document.getElementById("terminalResults")
    terminal.scrollTop = terminal.scrollHeight


FullDate = ->
    today = new Date
    dd = today.getDate().toString()
    mm = today.getMonth() + 1
    mm = mm.toString()
    yy = today.getFullYear().toString().substring(2, 4)
    h = today.getHours().toString()
    m = today.getMinutes().toString()
    # console.log(mm.concat('-', dd, '-', yy, '-', h,'-', m))


    return mm.concat('-', dd, '-', yy, '/', h,':', m)


time = ->
    today = new Date
    h = today.getHours().toString()
    m = today.getMinutes().toString()
    return h.concat(':', m)


# sequence goes here

global = " me@" + "webTerminal > "

document.getElementById('terminalTextInput').focus()
form = document.getElementById("terminalInput")
form.addEventListener 'submit', handleForm

addPrefix()

# deafult
addRawTextResult('Welcome to my web terminal nothing much to see so far though, only command is help & clear')