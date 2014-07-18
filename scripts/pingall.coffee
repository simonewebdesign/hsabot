# Description:
#   !!!!!pingall omg guys wtf ffs dammit

# SHOULD MATCH:
# rich grumpy
# grumpy rich
# grumpy richie
# richard grumpy
# grumpy Richard K

guysReplies = [
  "guys guys guys"
  "Guys, guys"
  "guys guys"
  "Guys......."
  "(drevil)guys guys"
  "guys!"
]

module.exports = (robot) ->
  robot.hear /pingall/i, (msg) ->
    msg.send "!!!!!!!!11pingall OMG guys ^^^^^"

  robot.hear /guys(.*)guys/i, (msg) ->
    msg.send msg.random guysReplies

  robot.hear /OMG/i, (msg) ->
    msg.send "OMG OMG"

  robot.hear /WTF/i, (msg) ->
    msg.send "FFS GUYS DAMMIT"

  robot.hear /(rich(.*)grumpy|grumpy(.*)rich)/i, (msg) ->
    msg.send "(grumpycat) <-- rich"
