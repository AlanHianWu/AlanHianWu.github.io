form = document.getElementById("terminalInput")

handleForm = (event) ->
    textInput = document.getElementById('terminalTextInput').value.trim()
    console.log("input: ", textInput)

    clearInput()
    addTextResult('> ' + textInput)

    if textInput == "help"
        addTextResult("Working on it, hopfully i'll have the APIs working")

    event.preventDefault()

form.addEventListener 'submit', handleForm

# document.addEventListener 'DOMContentLoaded', ->
#     document.getElementsByTagName('form')[0].onsumit = (evt) ->
#         evt.preventDefault()
#         checkword()
#         window.scrollTo(0, 150)

# reading key inputs
# document.addEventListener('keydown', function(event) {
#     if(event.keyCode == 37) {
#         alert('Left was pressed');
#     }
#     else if(event.keyCode == 39) {
#         alert('Right was pressed');
#     }
# });

document.getElementById('terminalTextInput').focus()

textResults = document.getElementById("terminalResults").innerHTML


clearInput = ->
    document.getElementById("terminalTextInput").value = ""


scrollToBottom = ->
    console.log "scroll to Bottom"
    termDivResults = document.getElementById('terminalResults')
    termDivResults.scrollTop = termDivResults.scrollHeight

scrollToBottom()

addTextResult = (text)->
    document.getElementById("terminalResults").innerHTML += "<p>" + text + "</p>"
    scrollToBottom()



# var form = document.getElementById("myForm");
# function handleForm(event) { event.preventDefault(); } 
# form.addEventListener('submit', handleForm);