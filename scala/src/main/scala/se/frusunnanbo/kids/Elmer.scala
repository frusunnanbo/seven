package se.frusunnanbo.kids

import akka.actor.{Actor, ActorRef}

class Elmer(hannes: ActorRef) extends Actor {
  override def receive: Receive = {
    case "Skridskor" => {
      say("NÄÄÄ!")
      hannes ! "Du är dum!"
    }
    case "Kalk" => say("...")
  }

  private def say(message: String): Unit = {
    println("Elmer: " +  message)
  }
}
