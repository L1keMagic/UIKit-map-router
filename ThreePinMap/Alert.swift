import UIKit

extension UIViewController {
    func alertAddAdress(title: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default) { (action) in
            print("action")
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else { return  }
            completionHandler(text)
        }
        let alertCancel = UIAlertAction(title: "Cancel", style: .default) { (_) in
        }
        alertController.addTextField { tf in
            tf.placeholder = placeholder
        }
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default)
        alertController.addAction(alertOk)
        present(alertController, animated: true, completion: nil)
    }
}
