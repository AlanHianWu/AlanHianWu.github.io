
#functions here

handleMonseMove = (event) ->
    event = event || window.event
    console.log event.clientX 


sayKeyDown = (event) -> 

    input = document.getElementById('editor')

    c_pos = getCaretPos(input)
    console.log "caret", c_pos, event.key

    # textInput(c_pos, event.key)

    return false


sayKeyUp = (event) -> 

    return false


stopShortCuts = (event) ->

    # speical keys
    # these will need speicial logic due to the browser sharing shortcuts
    # Tab, 
    special = [9, '9']

    
    if event.keyCode in special
        console.log 'Tab!! =>'
        event.preventDefault()


        arrowRight = new KeyboardEvent('keydown', { keyCode: 48 });

        
        document.dispatchEvent(arrowRight)



        # return false
    
    return true


textInput = (c_pos, key) ->
    document.getElementById("editor").innerHTML += '<pre id="editor">' + key + '</pre>'


getCaretPos = (editDiv) ->

    carPos = 0
    if window.getSelection
        
        sel = window.getSelection()
        
        if sel.rangeCount
            
            range = sel.getRangeAt(0)
            if range.commonAncestorContainer.parentNode == editDiv
                carPos = range.endOffset
    
    else if document.selection && document.selection.createRange
        range = document.selection.createRange()
        
        if range.parentElement() == editDiv
            tempEl = document.createElement("span")
            editableDiv.insertBefore(tempEl, editDiv.firstChild)
            tempRange = range.duplicate()
            tempRange.moveToElementText(tempEl)
            tempRange.setEndPoint("EndToEnd", range)
            carPos = tempRange.text.length

    return carPos






#sqence here

# document.onmousemove = handleMonseMove

# for i in [0...15]
#     document.getElementById("editor").innerHTML += '<pre id="editor">' + i + ' TEST</pre>'


# replace all whitespace with span
# pres = document.querySelectorAll('pre');
# for i in pres
#     i.innerHTML = i.innerHTML.replace(/ /g, '<span> </span>')


# Watching the inputs
container = document.getElementById('Container')

container.addEventListener('keydown', sayKeyDown)
container.addEventListener('keyup', sayKeyUp)



#Stop shortcuts keys so it can be read as editor keys
container.onkeydown = stopShortCuts

