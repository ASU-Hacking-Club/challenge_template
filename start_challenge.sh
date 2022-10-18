make
docker build . -t ctf_challenge
docker run -it --rm -p 2021:31337 ctf_challenge
