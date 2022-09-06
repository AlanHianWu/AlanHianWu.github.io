// Generated by CoffeeScript 2.7.0
(function() {
  // functions goes here
  var addTextResult, clearDisplay, clearInput, form, handleForm;

  handleForm = function(event) {
    var textInput;
    textInput = document.getElementById('terminalTextInput').value.trim();
    clearInput();
    addTextResult(textInput);
    if (textInput === "help") {
      addTextResult("Working on it, hopfully i'll have the APIs working");
    }
    return event.preventDefault();
  };

  clearInput = function() {
    return document.getElementById("terminalTextInput").value = "me/somedate/placeholder>";
  };

  clearDisplay = function() {
    return document.getElementById("terminalResults").innerHTML = "";
  };

  addTextResult = function(text) {
    return document.getElementById("terminalResults").innerHTML += "<p>" + text + "</p>";
  };

  // sequence goes here

  // document.getElementById('terminalTextInput').focus()
  form = document.getElementById("terminalInput");

  form.addEventListener('submit', handleForm);

  document.getElementById('terminalTextInput').value = 'me/somedate/placeholder>';

}).call(this);
