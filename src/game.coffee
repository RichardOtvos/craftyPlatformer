window.onload = ->

    keyGotten = false
    levelList = ['level1', 'end']
    currentLevel = 1


    Crafty.init 1000, 400

    Crafty.scene "level1", ->
        Crafty.background "#3CA0D0"
        player = Crafty.e("2D, DOM, Twoway, Player, Gravity, Collision")
            .attr({
                w: 30
                h: 30
                x: 100
                y: 100
            })
            .css({
                "background-color": "red"
            })
            .twoway(4, 6)
            .gravity("Platform")
            .onHit("Door", ->

                if keyGotten
                    currentLevel++
                    Crafty.scene levelList[currentLevel-1]
                else

            )
            .onHit("Key", ->
                doorKey.destroy()
                keyGotten = true
            )

        ground1 = Crafty.e("2D, DOM, Gravity, Platform")
            .attr({
                w: 600
                h: 30
                x: 0
                y: 370
            })
            .css({
                "background-color": "brown"
            })

        ground2 = Crafty.e("2D, DOM, Gravity, Platform")
            .attr({
                w: 200
                h: 30
                x: 800
                y: 370
            })
            .css({
                "background-color": "brown"
            })

        ground3 = Crafty.e("2D, DOM, Gravity, Platform")
            .attr({
                w: 100
                h: 20
                x: 680
                y: 320
            })
            .css({
                "background-color": "brown"
            })

        ground4 = Crafty.e("2D, DOM, Gravity, Platform")
            .attr({
                w: 100
                h: 20
                x: 850
                y: 250
            })
            .css({
                "background-color": "brown"
            })

        ground5 = Crafty.e("2D, DOM, Gravity, Platform")
            .attr({
                w: 230
                h: 20
                x: 300
                y: 230
            })
            .css({
                "background-color": "brown"
            })

        door = Crafty.e("2D, DOM, Door")
            .attr({
                w: 30
                h: 60
                x: 300
                y: 170
            })
            .css({
                "background-color": "yellow"
            })

        doorKey = Crafty.e("2D, DOM, Key")
            .attr({
                w: 10
                h: 10
                x: 900
                y: 230
            })
            .css({
                "background-color": "green"
            })

    Crafty.scene "end", ->

        Crafty.background "#000"
        endingText = Crafty.e("2D, DOM, Text")
            .text(" THE END")
            .attr({
                w: 1000
                h: 400
                x: 0
                y: 0
                })
            .css({
                "color": "white"
                "font-size": "72px"
                "text-align": "center",
                "margin-top": "100px";
                })


    Crafty.scene levelList[currentLevel-1]