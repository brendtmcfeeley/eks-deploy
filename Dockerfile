# Lightweight Linux set at 3.11. Python2 is deprecated for 3.12 and higher
FROM alpine:3.11

# Set non root workdir
WORKDIR /python-workspace

# Copy form local to image
COPY requirements.txt .

# Install python3, python2, and R
RUN apk add --no-cache python3
RUN apk add --no-cache python2
RUN apk add --no-cache R

# Install packages for python3 currently
RUN pip3 install -r requirements.txt