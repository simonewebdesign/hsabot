# Description:
#   !!!!!pingall omg guys wtf ffs dammit

module.exports = (robot) ->
  robot.hear /pingall/i, (msg) ->
    msg.send "!!!!!pingall omg guys wtf ffs dammit"

  robot.hear /guys/i, (msg) ->
    msg.send "guys guys guys"

  robot.hear /omg/i, (msg) ->
    msg.send "omg omg omg"

  robot.hear /wtf/i, (msg) ->
    msg.send "FFS GUYS DAMMIT"
