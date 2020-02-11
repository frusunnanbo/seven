package se.frusunnanbo.tictactoe

object Piece extends Enumeration {
  type Piece = Value

  val X = Value("X")
  val O = Value("O")
  val Empty = Value("-")
}
