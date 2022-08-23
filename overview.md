# Description

Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Details

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

TASK 1: Extract Nouns for Classes

<!--
Players
  State (variables)
    Lives = 3
    Score = 3
    Name
  Behaviour:
    Get name (USER I/O)

Questions
  State (variables)
    Number 1
    Number 2
    Question [question string, correct answer]
  Behaviour:
    Check answer

Game (Main)
  State (variables)
    Current player
  Behaviour:
    Start game
    Generate question
    Check answer
    Check lives
    Announce winner/scores and end game

-->
