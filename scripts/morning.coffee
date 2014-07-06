# Description:
#   Reply with 'morning' when someone says 'morning', but only on the 3rd time.

module.exports = (robot) ->
  robot.hear /morning/i, (msg) ->
    numOfMornings = robot.brain.get('numOfMornings') * 1 or 0
    totalMornings = robot.brain.get('totalMornings') * 1 or 0

    if numOfMornings > 2
      msg.send "morning"
      robot.brain.set numOfMornings: 0

    robot.brain.set totalMornings: totalMornings + 1