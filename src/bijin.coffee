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
require('date-utils');

module.exports = (robot) ->
  robot.respond /(何時|今何時)/i, (msg) ->
    places = [ 'jp', 'taiwan', 'hawaii', 'thailand']
    place = places[Math.floor(Math.random() * places.length)]

    dt = new Date();
    formattedTime = dt.toFormat("HH24MI");
    img_url = "http://www.bijint.com/assets/pict/" + place + "/pc/" + formattedTime + ".jpg"
    msg.send(img_url)

    msg.finish()
