openssl req -new -key server.key -out server.csr -config server.cnf
openssl req -noout -text -in server.csr
openssl x509 -req -days 3650 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt.new -extensions req_ext -extfile server.cnf
openssl x509 -noout -text -in server.crt.new

openssl req -new -key admin.key -out admin.csr -config admin.cnf
openssl req -noout -text -in admin.csr
openssl x509 -req -days 3650 -in admin.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out admin.crt.new -extensions req_ext -extfile admin.cnf
openssl x509 -noout -text -in admin.crt.new
