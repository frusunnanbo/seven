package se.frusunnanbo.tictactoe

import org.scalatest.matchers.should.Matchers
import se.frusunnanbo.tictactoe.GameStatus.{NoWinnerYet, OWins, Tie, XWins}

class BoardTest extends org.scalatest.flatspec.AnyFlatSpec with Matchers{

  "(x x x, - - -, o o o" should "be a tie" in {
    Board.evaluate(((1, 1), (1, 2), (1, 3)), ((3, 1), (3, 2), (3, 3))) shouldBe Tie
  }

  "(x x x, - o -, o - o)" should "be won by x" in {
    Board.evaluate(((1, 1), (1, 2), (1, 3)), ((3, 1), (2, 2), (3, 3))) shouldBe XWins
  }

  "(x - x, - x -, o o o)" should "be won by o" in {
    Board.evaluate(((1, 1), (2, 2), (1, 3)), ((3, 1), (3, 2), (3, 3))) shouldBe OWins
  }

  "(x - -, x o -, x o o)" should "be won by x" in {
    Board.evaluate(((1, 1), (2, 1), (3, 1)), ((2, 2), (3, 2), (3, 3))) shouldBe XWins
  }

  "(x - o, x o -, o - x)" should "be won by o" in {
    Board.evaluate(((1, 1), (2, 1), (3, 3)), ((1, 3), (2, 2), (3, 1))) shouldBe OWins
  }

  "(x o -, x - o, o - x)" should "be not won yet" in {
    Board.evaluate(((1, 1), (2, 1), (3, 3)), ((1, 2), (2, 3), (3, 1))) shouldBe NoWinnerYet
  }

}
