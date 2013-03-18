"use strict"

# Start Crafty
Crafty.init 400, 336

# Loading Scene
Crafty.scene "loading", ->

  # Load takes an array of assets and a callback when complete
  Crafty.load [""], ->
    Crafty.scene "main" # when everything is loaded, run main scene

  # Black background with some loading text
  Crafty.background "#000"
  Crafty.e("2D, DOM, Text").attr({
    w: 100
    h: 20
    x: 150
    y: 120
    })
  .text("Loading...")
  .css({ "text-align": "center" })

Crafty.scene "loading"

# Main Scene
# Crafty.scene "main", ->
#   generateWorld()