port = 3000
server = require('http').createServer()
io = require('socket.io')(server)

io.on 'connection', (socket) ->
  console.log port
  socket.on 'event', (data) ->
  socket.on 'disconnect', -> 

server.listen port