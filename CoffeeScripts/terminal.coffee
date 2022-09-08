# functions goes here

handleForm = (event) ->
    textInput = document.getElementById('terminalTextInput').value.trim()

    scrollDown()
    clearInput()

    user = textInput.substring(0,3)
    terminal_name = textInput.substring(3, 18)

    # add formating here
    addTextResult(" <t id='terminal-user'>" + user + "</t>" + "<t id='terminal-name'>" + terminal_name + "</t>" + textInput.substring(18, ))

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
            if global.length > document.getElementById("terminalTextInput").value.length
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
    document.getElementById("terminalResults").innerHTML += "<p><t id='terminal-time'>" + time() + "</t> <t> " + text + "</t></p>"

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


    return mm.concat('-', dd, '-', yy, '/', h,':', m)


time = ->
    today = new Date
    h = today.getHours().toString()
    m = today.getMinutes().toString()
    
    # fix leading zeros
    h = ('0'+ h).slice(-2)
    m = ('0'+ m).slice(-2)
    return h.concat(':', m)


# Make the DIV element draggable:

# dragElement = (elmnt) ->
#     pos1 = 0
#     pos2 = 0
#     pos3 = 0
#     pos4 = 0

#     dragMouseDown = (e) ->
#         e = e || window.event
#         e.preventDefault()
#         # get the mouse cursor position at startup:
#         pos3 = e.clientX
#         pos4 = e.clientY
#         document.onmouseup = closeDragElement
#         # call a function whenever the cursor moves:
#         document.onmousemove = elementDrag


#     elementDrag = (e) ->
#         e = e || window.event
#         e.preventDefault()
#         # calculate the new cursor position:
#         pos1 = pos3 - e.clientX
#         pos2 = pos4 - e.clientY
#         pos3 = e.clientX
#         pos4 = e.clientY
#         # set the elements new position:
#         elmnt.style.top = (elmnt.offsetTop - pos2) + "px"
#         elmnt.style.left = (elmnt.offsetLeft - pos1) + "px"
        

#     closeDragElement = ->
#         # stop moving when mouse button is released:
#         document.onmouseup = null
#         document.onmousemove = null


#     if document.getElementById(elmnt.id + "header")
#         # if present, the header is where you move the DIV from:
#         document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown
#     else
#         # otherwise, move the DIV from anywhere inside the DIV:
#         elmnt.onmousedown = dragMouseDown
  







# sequence goes here

global = "me@" + "webTerminal >  "

document.getElementById('terminalTextInput').focus()
form = document.getElementById("terminalInput")
form.addEventListener 'submit', handleForm

addPrefix()

# deafult
addRawTextResult('Welcome to my web terminal nothing much to see so far though, only command is help & clear')


# dragElement(document.getElementById("mydiv"))