# Description
#   A hubot script that does the things
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   tatsuaki_w <tatsuaki.w@gmail.com>

module.exports = (robot) ->

  robot.respond /(何時|今何時)/i, (msg) ->
    places = [ 'jp', 'taiwan', 'hawaii', 'thailand', 'binan' ]
    place = places[Math.floor(Math.random() * places.length)]
    date = new Date
    hour = ('0' + date.getHours()).slice(-2)
    minute = ('0' + date.getMinutes()).slice(-2)
    img = "http://www.bijint.com/assets/pict/" + place + "/pc/" + hour + minute + ".jpg"
    msg.send img

    msg.finish()
