# Description:
#   Random cheering when someone wants to deploy

# MATCHES:
# rolling
# rolling out
# rollout
# roll out
# roll  out
# deploy
# deploying to prod
# rollin
# rollin rollin

# DOES NOT MATCH:
# roll
# rill
# rollbar

replies = [
  "(thumbsup)"
  "hmm"
  "8)"
  "wow"
]

module.exports = (robot) ->
  robot.hear /((roll(.*)?(in|out))|deploy)/i, (msg) ->

    d = new Date();
    weekday = new Array(7)
    weekday[0] = "Sunday"
    weekday[1] = "Monday"
    weekday[2] = "Tuesday"
    weekday[3] = "Wednesday"
    weekday[4] = "Thursday"
    weekday[5] = "Friday"
    weekday[6] = "Saturday"

    today = weekday[d.getDay()]

    if today == "Friday"
      msg.send "Deploy on Friday?"
      msg.send "http://cdn1.wordansassets.com/wvc-1334345743/wordansfiles/images/2012/4/13/137566/137566_340.jpg"
    else
      setTimeout ->
        msg.send msg.random replies
      , 8000
