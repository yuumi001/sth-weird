import socket #Minn <3

HOST = '192.168.1.2'
PORT = 1810  

s=socket.socket(socket.AF_INET, socket.SOCK_STREAM) # ipv4, TCP
s.bind((HOST, PORT))
s.listen(1)	
print 'Listening...',
conn, addr = s.accept() 
print 'Connected by', addr
while True:
 data = conn.recv(1024)
 if not data:
  break
 conn.sendall(data.upper())
s.close()