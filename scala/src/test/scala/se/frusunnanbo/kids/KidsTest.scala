package se.frusunnanbo.kids

import org.scalatest.matchers.should.Matchers
import language.postfixOps
import akka.actor._

class KidsTest extends org.scalatest.flatspec.AnyFlatSpec with Matchers{

  "Viktor" should "not like 'Lång skoldag'" in {
    val system = ActorSystem("kids")

    val viktor = system.actorOf(Props[Viktor], "viktor")
    viktor ! "Lång skoldag"
  }

  "Hannes" should "never come to dinner" in {
    val system = ActorSystem("kids")

    val viktor = system.actorOf(Props[Viktor], "viktor")
    viktor ! "Lång skoldag"
  }
}
