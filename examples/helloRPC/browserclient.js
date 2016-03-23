// -------- Datawire interface here
// Pull in the 'Hello' service contract
var hello = require("hello").hello;

// Create a 'Hello' client to talk to our local server
var client = new hello.HelloClient("http://localhost:8910/hello");

// -------- Browser utilities here
// Here's where we save the button text while calling out.
var buttonText = '';

// This is our buffer for holding responses.
var lines = [];
var lineNo = 0;
var linesToDisplay = 10;

function newLine(line, color) {
  if (lines.length >= linesToDisplay) {
    lines.shift();
  }

  lineNo++;

  lines.push('<p class="' + color + '">' + lineNo + ": " + line + '</p>');

  return lines.join("\n");
}

// -------- Browser event handlers here
// This function gets bound to the 'Say Hello!' button on the web page
function sayHello (buttonID, inputID, outputID) {
  // First, grab the input and output elements...
  var button = document.getElementById(buttonID);
  var inputEl = document.getElementById(inputID);
  var outputEl = document.getElementById(outputID);

  // ...then grab the text they want to send...
  var input = inputEl.value;

  if (!input) {
    input = "Hello, World!";
  }

  // ...then off we go.
  buttonText = button.innerText;
  button.innerText = 'Stand by...';
  button.disabled = true;

  var request = new hello.Request();
  request.text = input;

  var response = client.hello(request);

  response.onFinished({
    onFuture: function (response) {
      var color = 'good';
      var text = response.result;

      if (response.getError() !== null) {
        color = 'bad';
        text = response.getError();
      }

      var html = newLine(text, color);

      outputEl.innerHTML = html;

      button.innerText = buttonText;
      button.disabled = false;
    }
  });
}
