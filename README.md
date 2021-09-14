# challenge_template
A challenge template for running a challenge in an isolated way

## Usage
First build the container
```
sudo docker build . -t ctf_challenge
```

Then run it with an open port
```
sudo docker run -it --rm -p 2021:31337 ctf_challenge
```

Now you can nc in:
```
nc localhost 2021
```

