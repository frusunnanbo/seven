package se.frusunnanbo.tictactoe

object GameStatus extends Enumeration {
  type GameStatus = Value

  val XWins = Value("X wins")
  val OWins = Value("O wins")
  val Tie = Value("Tie")
  val NoWinnerYet = Value("No winner yet")
}
