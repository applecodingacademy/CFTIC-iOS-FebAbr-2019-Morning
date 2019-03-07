import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class Test:UIViewController {
   
   var contenido:UIImageView?
   
   override func viewDidLoad() {
      contenido = UIImageView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 300, height: 500)))
      contenido?.contentMode = .scaleAspectFit
      view.addSubview(contenido!)
   }
   
   func recuperaImagen() {
      let imageURL = URL(string: "https://www.cambio16.com/wp-content/uploads/2017/11/Steve-Jobs-Died-RIP-1955-2011-640x526.jpg")!
      URLSession.shared.dataTask(with: imageURL) {
         (data, response, error) in
         guard let data = data, let response = response as? HTTPURLResponse, error == nil else {
            if let error = error {
               print("Error \(error)")
            }
            return
         }
         if response.statusCode == 200 {
            self.contenido?.image = UIImage(data: data)
         }
      }.resume()
   }
}

let test = Test()
test.recuperaImagen()
PlaygroundPage.current.liveView = test
