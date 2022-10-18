# challenge_template
A challenge template for running a challenge in an isolated way


## Run Example Challenge 
Simply run the start script:
```
start-challenge.sh
```
This will build challenge, place it in a container, and run it!

Now you can nc in:
```
nc localhost 2021
```

## How to Write a Challenge
1. Place anything you want private and not put on the box in `private` folder. A good thing to put here would be the source code for your challenge. 
2. Edit the `Makefile` so that when running `make` from the root of this repo it will build your challenge from source and copy it into the `public` folder 
3. Put any other things you want RO copied into the `public` folder 
4. Edit the `start-challenge.sh` script to change the port and name your challenge will run as. You only need change the first number listed in the port. 
5. Finally start the challenge using the start script
