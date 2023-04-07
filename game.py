

import random

# Generate a random number between 1 and 20
secret_number = random.randint(1, 20)

print("I'm thinking of a number between 1 and 20. Can you guess what it is?")

# Loop until the player guesses the number
while True:
    # Get the player's guess
    guess = int(input("Enter your guess: "))

    # Check if the guess is correct
    if guess == secret_number:
        print("Congratulations! You guessed the number!")
        break
    elif guess < secret_number:
        print("Your guess is too low. Try again.")
    else:
        print("Your guess is too high. Try again.")
