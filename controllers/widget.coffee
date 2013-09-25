args = arguments[0] or {}

max = args.max or 5

for i in [1..max]
  star = Ti.UI.createImageView()
  $.addClass(star, "star")
  $.stars.add star

star = $.stars.getChildren()[0]
starWidth = star.width + star.left
$.touch.width = starWidth * max + $.stars.left - star.left + $.stars.right
 
exports.changeRating = (rating)->
  for star,i in $.stars.getChildren()
    if rating > i
      star.image = WPATH("images/on.png")
    else
      star.image = WPATH("images/off.png")
     
start = (e)->
  $.changeRating parseInt((e.x + starWidth - $.stars.left - (star.left / 2)) / starWidth)
      
move = (e)->
  $.changeRating parseInt((e.x + starWidth - $.stars.left - (star.left / 2)) / starWidth)