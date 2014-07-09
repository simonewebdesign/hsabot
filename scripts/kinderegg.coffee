# Description:
#   It's all about kinder eggs

module.exports = (robot) ->
  robot.hear /challenge/i, (msg) ->
    msg.reply "challenge? Does it involve a kinder egg?"

  robot.hear /kinder(.*)?egg/i, (msg) ->
    msg.send "http://upload.wikimedia.org/wikipedia/commons/0/09/Kinder_Uberraschung.jpg"
