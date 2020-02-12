package se.frusunnanbo.kids

import akka.actor.Actor

class Hannes extends Actor {
  override def receive: Receive = {
    case "Sluta scratcha och kom och ät" => say("Jag koooommmmeeer!")
    case "Svamp" => say("Bläk")
    case "Du är dum!" => say("Nä, DU är dum!")
  }

  private def say(message: String): Unit = {
    println("Hannes: " +  message)
  }
}
