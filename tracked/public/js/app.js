window.addEventListener("load", function(){
  // Tracking code
  var win = document.getElementById("iframe").contentWindow

  document.getElementById("button").onclick = function() {
    win.postMessage(
      "The user clicked the button with id: " + this.id,
      "*"
    )
    return false
  }
});;
