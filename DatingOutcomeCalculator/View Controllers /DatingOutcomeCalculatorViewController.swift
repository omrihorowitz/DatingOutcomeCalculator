//
//  DatingOutcomeCalculatorViewController.swift
//  DatingOutcomeCalculator
//
//  Created by Omri Horowitz on 2/9/21.
//

import UIKit

class DatingOutcomeCalculatorViewController: UIViewController {

    //MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        addAllSubviews()
        setConstraints()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
    }
    
    //MARK: - Properties
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    
 //MARK: - Methods
    
    func addAllSubviews() {
        self.view.addSubview(datingOutcomeImageView)
        self.view.addSubview(datingCalculaterTitleLabel)
        self.view.addSubview(datingOutcomeResponseLabel)
        self.view.addSubview(timeSliderLabel)
        self.view.addSubview(moneySliderLabel)
        self.view.addSubview(attentionSliderLabel)
        self.view.addSubview(timeValueSlider)
        self.view.addSubview(moneyValueSlider)
        self.view.addSubview(attentionValueSlider)
    }
    
    //function for sliders
    
    func updateDatingOutcome() {
        if moneyValueSlider.value > 50.0 && attentionValueSlider.value < 4.0 {
            datingOutcomeImageView.image = UIImage(named: "trophyWife")
            datingOutcomeResponseLabel.text = "Trophy Wife"
        } else if timeValueSlider.value > 5.0 && attentionValueSlider.value > 4.0 {
            datingOutcomeImageView.image = UIImage(named: "foreverLove")
            datingOutcomeResponseLabel.text = "Forever Love"
        } else {
            datingOutcomeImageView.image = UIImage(named: "fling")
            datingOutcomeResponseLabel.text = "Fling"
        }
    }
    
    func setConstraints() {
        
        datingCalculaterTitleLabel.anchor(top: self.safeArea.topAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 30, paddingRight: 30, height: 40)
        
        datingOutcomeImageView.anchor(top: datingCalculaterTitleLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 30, paddingRight: 30, width: 389.5, height: 219)
        
        datingOutcomeResponseLabel.anchor(top: datingOutcomeImageView.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 30, paddingRight: 30, height: 130)
        
        timeSliderLabel.anchor(top: datingOutcomeResponseLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 160, paddingRight: 160, width: 100, height: 25)
        
        timeValueSlider.anchor(top: timeSliderLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 60, paddingRight: 60, width: 308, height: 68)
        
        moneySliderLabel.anchor(top: timeValueSlider.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 160, paddingRight: 160, width: 100, height: 25)
        
        moneyValueSlider.anchor(top: moneySliderLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 60, paddingRight: 60, width: 308, height: 68)
        
        attentionSliderLabel.anchor(top: moneyValueSlider.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 160, paddingRight: 160, width: 100, height: 25)
        
        attentionValueSlider.anchor(top: attentionSliderLabel.bottomAnchor, bottom: nil, leading: self.safeArea.leadingAnchor, trailing: self.safeArea.trailingAnchor, paddingTop: 20, paddingBottom: 0, paddingLeft: 60, paddingRight: 60, width: 308, height: 68)
    
    }

//MARK: - Views

let datingOutcomeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "veryNice")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()

let datingCalculaterTitleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = .systemTeal
    label.textColor = .systemPurple
    label.textAlignment = .center
    label.numberOfLines = 0
    label.font = UIFont(name: "Rockwell", size: 30)
    label.font = UIFont.boldSystemFont(ofSize: 30)
    label.text = "Dating Calculator"
        return label
    }()
    
let datingOutcomeResponseLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = .systemTeal
    label.textColor = .systemPurple
    label.textAlignment = .center
    label.font = UIFont(name: "Baskerville", size: 16)
    label.text = "Use the sliders to determine a suggested outcome..."
        return label
    }()
    
let timeSliderLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = .systemTeal
    label.textColor = .systemPurple
    label.textAlignment = .center
    label.font = UIFont.boldSystemFont(ofSize: 17)
    label.text = "Time"
        return label
    }()
    
let moneySliderLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = .systemTeal
    label.textAlignment = .center
    label.textColor = .systemPurple
    label.font = UIFont.boldSystemFont(ofSize: 17)
    label.text = "Money"
        return label
    }()
    
let attentionSliderLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.backgroundColor = .systemTeal
    label.textAlignment = .center
    label.textColor = .systemPurple
    label.font = UIFont.boldSystemFont(ofSize: 17)
    label.text = "Attention"
        return label
    }()
    
    let timeValueSlider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumTrackTintColor = .systemTeal
        slider.thumbTintColor = .systemTeal
        slider.minimumValue = 0
        slider.maximumValue = 8
        slider.value = 4
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        return slider
    }()
    
    let moneyValueSlider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumTrackTintColor = .systemTeal
        slider.thumbTintColor = .systemTeal
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 20
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        return slider
    }()
    
    let attentionValueSlider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumTrackTintColor = .systemTeal
        slider.thumbTintColor = .systemTeal
        slider.minimumValue = 0
        slider.maximumValue = 8
        slider.value = 4
        slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        return slider
    }()

    
    @objc func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
        updateDatingOutcome()
    }

}
