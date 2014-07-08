# Description:
#   Reply to someone when he asks what people think about Richard

module.exports = (robot) ->
  robot.hear /think(.*)? rich/i, (msg) ->
    msg.send "well, I think he's not really a God."
    setInterval () ->
      msg.send  "and that he drinks way TOO much energy drinks."
    , 8000
