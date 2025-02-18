//
//  HomeViewController.swift
//  PixelMingle
//
//  Created by Moin Janjua on 23/08/2024.
//

import UIKit


class HomeViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    enum ImageEditorType {
        case zlImageEditor
        case iOSPhotoEditor
    }
    @IBOutlet weak var SideMenuV1: UIView!
    @IBOutlet weak var SideMenu: UIView!
    @IBOutlet weak var gredientView: UIView!
    @IBOutlet weak var sideMenuTB: UITableView!
    @IBOutlet weak var vesion_Label: UILabel!
    @IBOutlet weak var TimeLbl: UILabel!
    
    @IBOutlet weak var new_Btn: UIButton!
    @IBOutlet weak var videoEdit_btn: UIButton!
    @IBOutlet weak var MakeFrame_btn: UIButton!
    @IBOutlet weak var posterIV: UIImageView!
    @IBOutlet weak var wallpapers_btn: UIButton!
    @IBOutlet weak var makeCollage_btn: UIButton!
    @IBOutlet weak var customEdit_btn: UIButton!
    @IBOutlet weak var editPicture_btn: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var sideMenuList = [String]()
    var selectedEditor: ImageEditorType?
//  
//    var Imgs: [UIImage] = [UIImage(named: "photo-editor")!,UIImage(named: "video-editor-")!,UIImage(named: "-collage")!,UIImage(named: "photo frames")!,UIImage(named: "custom")!,UIImage(named: "-wallpaper")!,UIImage(named: "-trimming")!,UIImage(named: "crop")!,UIImage(named: "background-remover")!]
//    var name = ["Photo Edits","Video Edit","Make Collage","Photo Frames","Custom Things","Wallpapers","Trimming Video","Cropping Video","Background Remove"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyGradientToButton(view: gredientView)
//        applyGradientToButton(view: SideMenuV1)
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        
//        sideMenuList = ["Share Your Thoughts","Who We Are","Privacy Notice","Share App"]
//        sideMenuTB.delegate = self
//        sideMenuTB.dataSource = self
//        SideMenu.isHidden = true
//        let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] ?? "N/A"
//        let build = Bundle.main.infoDictionary?["CFBundleVersion"] ?? "N/A"
//        vesion_Label.text = "Version \(version) (\(build))"
//        
//        setGreetingMessage()
    }
    private func applyGradientToButton(view: UIView) {
            let gradientLayer = CAGradientLayer()
            
            // Define your gradient colors
            gradientLayer.colors = [
                UIColor(hex: "#6934ff").cgColor, // Purple
                UIColor(hex: "#8735fc").cgColor, // Bright Purple
                UIColor(hex: "#a535ff").cgColor  // Violet
            ]
            
            // Set the gradient direction
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)   // Top-left
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)     // Bottom-right
            
            // Set the gradient's frame to match the button's bounds
            gradientLayer.frame = view.bounds
            
            // Apply rounded corners to the gradient
            gradientLayer.cornerRadius = view.layer.cornerRadius
            
            // Add the gradient to the button
        view.layer.insertSublayer(gradientLayer, at: 0)
        }
    
    private func setGreetingMessage() {
        let hour = Calendar.current.component(.hour, from: Date())
        var greeting: String
        
        switch hour {
        case 5..<12:
            greeting = "Good Morning"
        case 12..<17:
            greeting = "Good Afternoon"
        case 17..<21:
            greeting = "Good Evening"
        default:
            greeting = "Good Night"
        }
        TimeLbl.text = greeting
    }
 
   
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func MenuButton(_ sender: Any) {
        SideMenu.isHidden = false
    }
    @IBAction func cancelButton(_ sender: Any) {
        SideMenu.isHidden = true
    }
    @IBAction func AddDeveloperButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let newViewController = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
               newViewController.modalTransitionStyle = .crossDissolve
               self.present(newViewController, animated: true, completion: nil)
    }
    
    @IBAction func DevelopersButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let newViewController = storyBoard.instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
               newViewController.modalTransitionStyle = .crossDissolve
               self.present(newViewController, animated: true, completion: nil)
    }
    @IBAction func AssignedTaskButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let newViewController = storyBoard.instantiateViewController(withIdentifier: "RecordsViewController") as! RecordsViewController
               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
               newViewController.modalTransitionStyle = .crossDissolve
               self.present(newViewController, animated: true, completion: nil)
    }
    
    @IBAction func ProjectButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let newViewController = storyBoard.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
               newViewController.modalTransitionStyle = .crossDissolve
               self.present(newViewController, animated: true, completion: nil)

    }
    
    @IBAction func SettingButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let newViewController = storyBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
               newViewController.modalTransitionStyle = .crossDissolve
               self.present(newViewController, animated: true, completion: nil)
    }
    @IBAction func CustomsButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
               let newViewController = storyBoard.instantiateViewController(withIdentifier: "ViewSalesViewController") as! ViewSalesViewController
               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
               newViewController.modalTransitionStyle = .crossDissolve
               self.present(newViewController, animated: true, completion: nil)
    }
    

    @IBAction func VideoCrropButton(_ sender: Any) {
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//               let newViewController = storyBoard.instantiateViewController(withIdentifier: "VideoCropperViewController") as! VideoCropperViewController
//               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//               newViewController.modalTransitionStyle = .crossDissolve
//               self.present(newViewController, animated: true, completion: nil)
    }
    @IBAction func VideodEditButtonTapped(_ sender: UIButton) {
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//               let newViewController = storyBoard.instantiateViewController(withIdentifier: "VideoEditorViewController") as! VideoEditorViewController
//               newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//               newViewController.modalTransitionStyle = .crossDissolve
//               self.present(newViewController, animated: true, completion: nil)
    }
}

//extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sideMenuList.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! SideMenuTableViewCell
//        cell.sidemenu_label.text = sideMenuList[indexPath.row]
//        
//        return cell
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 90
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        if indexPath.item == 0 {
////            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
////            let newViewController = storyBoard.instantiateViewController(withIdentifier: "FeedbackViewController") as! FeedbackViewController
////            newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
////            newViewController.modalTransitionStyle = .crossDissolve
////            self.present(newViewController, animated: true, completion: nil)
//        }
//        if indexPath.item == 1 {
////            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
////            let newViewController = storyBoard.instantiateViewController(withIdentifier: "AboutUsViewController") as! AboutUsViewController
////            newViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
////            newViewController.modalTransitionStyle = .crossDissolve
////            self.present(newViewController, animated: true, completion: nil)
//        }
//        if indexPath.item == 2 {
//            // Open Privacy Policy Link
//            if let url = URL(string: "https://jtechapps.pages.dev/privacy") {
//                UIApplication.shared.open(url, options: [:], completionHandler: nil)
//            }
//        }
//        if indexPath.item == 3 {
//            let appID = "FotoBlendPix" // Replace with your actual App ID
//            let appURL = URL(string: "https://apps.apple.com/app/id\(appID)")!
//            let activityViewController = UIActivityViewController(activityItems: [appURL], applicationActivities: nil)
//            present(activityViewController, animated: true, completion: nil)
//        }
//        }
//    }
