
#functions here

handleMonseMove = (event) ->
    event = event || window.event

    console.log event.clientX 





#sqence here

# document.onmousemove = handleMonseMove



for i in [1...50]
    document.getElementById("col").innerHTML += '<div><pre id="editor">' + i + '  <code>TEST</code></pre></div>'













