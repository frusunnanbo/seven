package se.frusunnanbo.tictactoe

import se.frusunnanbo.tictactoe.GameStatus.{NoWinnerYet, Tie}

class Board {
  def status() = NoWinnerYet
}

object Board {
  def initial() = new Board()
}
