package se.frusunnanbo.tictactoe

import org.scalatest.matchers.should.Matchers
import se.frusunnanbo.tictactoe.GameStatus.NoWinnerYet

class BoardTest extends org.scalatest.flatspec.AnyFlatSpec with Matchers{

  "A default-constructed board" should "have no winner" in {
    Board.initial().status() shouldBe NoWinnerYet
  }
}
