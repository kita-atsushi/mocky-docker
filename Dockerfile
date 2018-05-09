FROM node:10.0.0-alpine

RUN npm init --yes
RUN npm install mocky

ADD cert/cert.pem /node_modules/mocky/lib
ADD cert/csr.pem /node_modules/mocky/lib
ADD cert/key.pem /node_modules/mocky/lib

RUN mv /node_modules/mocky/lib/mocky.js /node_modules/mocky/lib/mocky.js.old
ADD extra_lib/mocky.js /node_modules/mocky/lib

