port = 3000
server = require('http').createServer()
io = require('socket.io')(server)
console.log 'listening on port: ', port

io.on 'connection', (socket) ->
  setInterval ->
    os.cpuUsage (v) -> 
      c_usage = Math.round v*100
      socket.emit 'cpu', c_usage
  , 1000

  console.log socket.emit 'cpu', c_usage

  socket.on 'event', (data) ->
  socket.on 'disconnect', -> 

server.listen port