package se.frusunnanbo.kids

import akka.actor.Actor

class Viktor extends Actor {
  override def receive: Receive = {
    case "Rökt bog" => say("Mums!")
    case "Lång skoldag" => {
      say("Jag vill också sluta 13:30!")
      self ! "Rökt bog"
    }
  }

  private def say(message: String): Unit = {
    println("Viktor: " +  message)
  }
}

