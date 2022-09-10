
#functions here

handleMonseMove = (event) ->
    event = event || window.event
    console.log event.clientX 


sayKeyDown = (event) -> 
    console.log("Down! + ", event.key)
    input = document.getElementById('editor')

    console.log "caret", getCaretPos(input)
    
    return false


sayKeyUp = (event) -> 
    console.log("Up! + ", event.key)

    return false


stopShortCuts = (event) ->
    console.log(event)
    return false

textInput = (event) ->
    document.getElementById("editor").innerHTML += '<pre id="editor">' + event.key + '</pre>'

getCaretPos = (editDiv) ->

    console.log('caret working!')
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
# container.onkeydown = stopShortCuts

