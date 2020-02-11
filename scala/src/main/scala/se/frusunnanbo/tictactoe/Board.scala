package se.frusunnanbo.tictactoe

import se.frusunnanbo.tictactoe.GameStatus.{NoWinnerYet, Tie, XWins}

object Board {
  type Pieces = ((Int, Int), (Int, Int), (Int, Int))
  def evaluate(xPieces: Pieces, oPieces: Pieces) = {
    if (scores(xPieces) && scores(oPieces)) {
      Tie
    } else if (scores(xPieces)) {
      XWins
    } else {
      NoWinnerYet
    }
  }

  private def scores(pieces: Pieces) = {
    hasRow(pieces)
  }

  private def hasRow(pieces: Pieces) = {
    val ((row1, _), (row2, _), (row3, _)) = pieces
    row1 == row2 && row2 == row3
  }
}
