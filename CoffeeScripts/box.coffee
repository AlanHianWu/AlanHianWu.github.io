borderRange = document.getElementById("border-range")
paddingRange = document.getElementById("padding-range")
contentRange = document.getElementById("content-range")

borderColor = document.getElementById("border-color")
paddingColor = document.getElementById("padding-color")
contentColor = document.getElementById("content-color")

borderBox = document.querySelector(".border")
paddingBox = document.querySelector(".padding")
contentBox = document.querySelector(".content")




css = document.styleSheets[1]

# totalrules = if css.cssRules then css.cssRules.length else css.rules.length

# css.deleteRule("body{background-color}")
# css.insertRule("body{background-color: yellow;}")


# .documentElement.style.setProperty('padding',  900 + "px");

# console.log css.cssRules

# borderRange.addEventListener "change",  ->
    # console.log("border")
 

# paddingRange.addEventListener "change", ->
#     # console.log("padding")
#     paddingBox.getComputedStyle.padding = paddingRange.value + "px"

# contentRange.addEventListener "change", ->
#     # console.log("content")
#     contentBox.getComputedStyle.padding = contentRange.value + "px"

# borderColor.addEventListener "change", ->
#     # console.log("b color")
#     borderBox.getComputedStyle.backgroundColor = borderColor.value

# paddingColor.addEventListener "change", ->
#     # console.log("p color")
#     paddingBox.getComputedStyle.backgroundColor = paddingColor.value

# contentColor.addEventListener "change", ->
#     # console.log("c color")
#     contentBox.getComputedStyle.backgroundColor = contentColor.value
