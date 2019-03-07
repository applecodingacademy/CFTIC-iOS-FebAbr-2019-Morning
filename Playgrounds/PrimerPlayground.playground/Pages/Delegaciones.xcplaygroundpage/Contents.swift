import AVFoundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

protocol SeAcaboElTiempo {
   func tiempoAcabado()
}

class Temporizador {
   var timer:Timer?
   var delegate:SeAcaboElTiempo?
   
   func accion() {
      let mensaje = "Hola"
      timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { _ in
         self.delegate?.tiempoAcabado()
         print(mensaje)
      }
   }
}

class UsandoTimer:SeAcaboElTiempo {
   func start() {
      let temporizador1 = Temporizador()
      temporizador1.delegate = self
      temporizador1.accion()
   }
   
   func tiempoAcabado() {
      print("Se acabó el tiempo")
   }
}

let timer1 = UsandoTimer()
//timer1.start()

class CarltonDance:NSObject, AVAudioPlayerDelegate {
   var player = AVAudioPlayer()
   
   func play(fichero:String) {
      guard let ruta = Bundle.main.url(forResource: fichero, withExtension: "mp3") else {
         return
      }
      player = try! AVAudioPlayer(contentsOf: ruta)
      player.delegate = self
      player.play()
   }
   
   func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
      print("Se acabó")
   }
}

let player = CarltonDance()
player.play(fichero: "carlton3")
