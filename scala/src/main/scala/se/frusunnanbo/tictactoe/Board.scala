package se.frusunnanbo.tictactoe

import se.frusunnanbo.tictactoe.GameStatus.{NoWinnerYet, OWins, Tie, XWins}

object Board {
  type Pieces = ((Int, Int), (Int, Int), (Int, Int))
  def evaluate(xPieces: Pieces, oPieces: Pieces) = {
    if (scores(xPieces) && scores(oPieces)) {
      Tie
    } else if (scores(xPieces)) {
      XWins
    } else if (scores(oPieces)) {
      OWins
    } else {
      NoWinnerYet
    }
  }

  private def scores(pieces: Pieces) = {
    hasRow(pieces) || hasColumn(pieces) || hasDiagonal(pieces)
  }

  private def hasRow(pieces: Pieces) = {
    val ((row1, _), (row2, _), (row3, _)) = pieces
    row1 == row2 && row2 == row3
  }

  private def hasColumn(pieces: Pieces) = {
    val ((_, col1), (_, col2), (_, col3)) = pieces
    col1 == col2 && col2 == col3
  }

  private def hasDiagonal(pieces: Pieces) = {
    val (loc1, loc2, loc3) = pieces
    onSameDiagonal(loc1, loc2) && onSameDiagonal(loc2, loc3)
  }

  private def onSameDiagonal(loc1: (Int, Int), loc2: (Int, Int)) = {
    val (row1, col1) = loc1
    val (row2, col2) = loc2
    row1 - row2 == col1 - col2
  }
}
