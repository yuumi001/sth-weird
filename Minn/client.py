import socket # Minn <3

HOST = '192.168.1.2' 
PORT = 1810      

s=socket.socket(socket.AF_INET, socket.SOCK_STREAM) # ipv4, TCP
s.connect((HOST, PORT))
send_data = raw_input('Input: ')
s.sendall(send_data.encode())
data = s.recv(1024)

print 'Received: ', repr(data)