import random

rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''

# Rock = 0, Paper = 1, Scissors = 2
# Rock wins against scissors.
# Scissors win against paper.
# Paper wins against rock.
player_choice = input("ROCK (r), PAPER (p), SCISSORS (s) ?! ")
computer_random = random.randint(0,2)


if computer_random == 0:
    computer_choice = "r"
elif computer_random == 1:
    computer_choice = "p"
else:
    computer_choice = "s"

print(f"Player chose {player_choice}")
print(f"Computer chose {computer_choice}")

#Invalid input. User loose
if player_choice == "r" or player_choice == "s" or player_choice == "p": 
    #Player rocks
    if player_choice == "r" and computer_choice == "r":
        print(f"😒 DRAW {rock} {rock} 😒 ")
    if player_choice == "r" and computer_choice == "s":
        print(f"Player wins 😀 {rock}")
    if player_choice == "r" and computer_choice == "p":
        print(f"Computer wins {paper} 😤")    

    #Player paper
    if player_choice == "p" and computer_choice == "r":
        print(f"Player wins 😀 {paper}")
    if player_choice == "p" and computer_choice == "s":
        print(f"Computer wins {scissors} 😤")
    if player_choice == "p" and computer_choice == "p":
        print(f"😒  DRAW {paper} {paper} 😒 ")    

    #Player scissors
    if player_choice == "s" and computer_choice == "r":
        print(f"Computer wins {rock} 😤")
    if player_choice == "s" and computer_choice == "s":
        print(f"😒  DRAW {scissors} {scissors} 😒 ")
    if player_choice == "s" and computer_choice == "p":
        print(f"Player wins 😀 {scissors}")    
else:
    print("Loser!")