# Description:
#   Random cheering when someone wants to deploy

# MATCHES:
# rolling
# rolling out
# rollout
# roll out
# deploy
# deploying to prod
# rollin
# rollin rollin

# DOES NOT MATCH:
# roll
# rill
# roll  out

replies = [
  "Go for it!",
  "OMG YES!",
  "Yeah guys let's do it!"
]

module.exports = (robot) ->
  robot.hear /(roll(.*)?(in|out)|deploy)/i, (msg) ->
    msg.reply msg.random replies
