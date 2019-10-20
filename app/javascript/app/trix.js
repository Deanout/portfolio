var Trix = require("trix")
require("@rails/actiontext")

// Attributes definition :
Trix.config.textAttributes.red = { 
    style: { color: "red" },
  parser: function(element) {
    return element.style.color === "red"
  },
  inheritable: true
 }

addEventListener("trix-initialize", function(event) {  
  var buttonHTML = '<button type="button" data-trix-attribute="red">RED</button>'


    event.target.toolbarElement.
    querySelector(".trix-button-group.trix-button-group--text-tools").
        insertAdjacentHTML("beforeend", buttonHTML)
})