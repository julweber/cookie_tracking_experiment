function listener(event){
  // if ( event.origin !== "http://example.com" )
  //   return
  console.log("I am working!")
  document.getElementById("test").innerHTML = "received: "+event.data;
}

if (window.addEventListener){
  addEventListener("message", listener, false)
} else {
  attachEvent("onmessage", listener)
}
