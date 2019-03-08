import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class Test:UIViewController {
   
   var contenido:UIImageView?
   
   override func viewDidLoad() {
      contenido = UIImageView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 300, height: 600)))
      contenido?.contentMode = .scaleAspectFit
      //contenido?.clipsToBounds = true
      view.addSubview(contenido!)
   }
   
   func recuperaImagen() {
      let imageURL = URL(string: "https://www.cambio16.com/wp-content/uploads/2017/11/Steve-Jobs-Died-RIP-1955-2011-640x526.jpg")!
      URLSession.shared.dataTask(with: imageURL) {
         (data, _, _) in
         guard let data = data else {
            return
         }
         DispatchQueue.main.async {
            self.contenido?.image = UIImage(data: data)
         }
      }.resume()
   }
}

let test = Test()
test.recuperaImagen()
PlaygroundPage.current.liveView = test
