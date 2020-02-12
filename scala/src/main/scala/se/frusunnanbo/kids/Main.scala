package se.frusunnanbo.kids

import akka.actor.{ActorSystem, Props}

object Main {
  def main(args: Array[String]): Unit = {
    val system = ActorSystem("kids")

    val viktor = system.actorOf(Props[Viktor], "viktor")
    val hannes = system.actorOf(Props[Hannes], "hannes")
    val elmer = system.actorOf(Props(classOf[Elmer], hannes), "elmer")

    viktor ! "Rökt bog"
    hannes ! "Svamp"
    elmer ! "Skridskor"
  }

}
