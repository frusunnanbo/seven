package se.frusunnanbo.tictactoe

import org.scalatest.matchers.should.Matchers
import se.frusunnanbo.tictactoe.GameStatus.{NoWinnerYet, Tie, XWins}

class BoardTest extends org.scalatest.flatspec.AnyFlatSpec with Matchers{

  "(x x x, - - -, o o o" should "be a tie" in {
    Board.evaluate(((1, 1), (1, 2), (1, 3)), ((3, 1), (3, 2), (3, 3))) shouldBe Tie
  }

  "(x x x, - o -, o - o)" should "be won by x" in {
    Board.evaluate(((1, 1), (1, 2), (1, 3)), ((3, 1), (2, 2), (3, 3))) shouldBe XWins
  }
}