### Commands to create certs for Rancher ###

# Create CA key
openssl genrsa -out cacert.key 4096

# Create root CA cert
openssl req \
-new \
-x509 \
-config cacert.conf \
-key cacert.key \
-out cacert.pem

# Check cert content
openssl x509 -in cacert.pem -text

###

# Create tls key
openssl genrsa -out tls.key 2048

###

# CSR and signing commands below for reference, but this is done dynamically by the Ansible role on the host

# Generate Certificate Signing Request (CSR)
openssl req \
-new \
-config tls.conf \
-key tls.key \
-out tls.csr

# Check CSR content
openssl req -in tls.csr -text

# Sign CSR with CA key
openssl x509 \
-req \
-in tls.csr \
-CA cacert.pem \
-CAkey cacert.key \
-CAcreateserial \
-extfile tls.conf \
-days 36500 \
out tls.crt

# Check cert contents
openssl x509 -in tls.crt -text

###

# Encrypt keys
ansible-vault encrypt cacert.key tls.key
