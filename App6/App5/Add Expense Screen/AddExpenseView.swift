//
//  AddExpenseView.swift
//  App5
//
//  Created by Ivy Zhou on 10/3/23.
//

import UIKit

class AddExpenseView: UIView {
    
    var textFieldTitle: UITextField!
    var textFieldAmount: UITextField!
//    var labelType: UILabel!
    var buttonSelectType: UIButton!
    var buttonTakePhoto: UIButton!
//    var pickerType: UIPickerView!
    var buttonAdd: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
            
        setuptextFieldTitle()
        setuptextFieldAmount()
//        setuplabelType()
        
        setupbuttonSelectType()
        setupbuttonTakePhoto()
        
//        setuppickerType()
        setupbuttonAdd()
        initConstraints()
    }
    
    func setuptextFieldTitle(){
        textFieldTitle = UITextField()
        textFieldTitle.placeholder = "Put title"
        textFieldTitle.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textFieldTitle)
    }
    
    func setuptextFieldAmount(){
        textFieldAmount = UITextField()
        textFieldAmount.placeholder = "Put amount"
        textFieldAmount.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textFieldAmount)
    }
    
//    func setuplabelType(){
//        labelType = UILabel()
//        labelType.textColor = .systemGray
//        labelType.text = "Select the type of expense:"
//        labelType.textAlignment = .center
//        labelType.translatesAutoresizingMaskIntoConstraints = false
//        self.addSubview(labelType)
//    }
    
//    func setuppickerType(){
//        pickerType = UIPickerView()
//        pickerType.translatesAutoresizingMaskIntoConstraints = false
//        self.addSubview(pickerType)
//    }
    
    func setupbuttonSelectType(){
        buttonSelectType = UIButton(type: .system)
        buttonSelectType.setTitle("Select the type of expense:", for: .normal)
        buttonSelectType.showsMenuAsPrimaryAction = true
        buttonSelectType.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonSelectType)
    }
    
    func setupbuttonTakePhoto(){
        buttonTakePhoto = UIButton(type: .system)
        buttonTakePhoto.setTitle("", for: .normal)
        buttonTakePhoto.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        buttonTakePhoto.showsMenuAsPrimaryAction = true
        buttonTakePhoto.contentHorizontalAlignment = .fill
        buttonTakePhoto.contentVerticalAlignment = .fill
        buttonTakePhoto.imageView?.contentMode = .scaleAspectFit
        buttonTakePhoto.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonTakePhoto)
    }
    
    func setupbuttonAdd(){
        buttonAdd = UIButton(type: .system)
        buttonAdd.setTitle("Add Expense", for: .normal)
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonAdd)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            textFieldTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            textFieldTitle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
                
            textFieldAmount.topAnchor.constraint(equalTo: textFieldTitle.bottomAnchor, constant: 16),
            textFieldAmount.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
                
//            labelType.topAnchor.constraint(equalTo: textFieldAmount.bottomAnchor, constant: 16),
//            labelType.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            buttonSelectType.topAnchor.constraint(equalTo: textFieldAmount.bottomAnchor, constant: 16),
            buttonSelectType.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
                        
            buttonTakePhoto.topAnchor.constraint(equalTo: buttonSelectType.bottomAnchor, constant: 16),
            buttonTakePhoto.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            buttonTakePhoto.widthAnchor.constraint(equalToConstant: 100),
            buttonTakePhoto.heightAnchor.constraint(equalToConstant: 100),
                
//            pickerType.topAnchor.constraint(equalTo: labelType.bottomAnchor, constant: 8),
//            pickerType.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
                
            buttonAdd.topAnchor.constraint(equalTo: buttonTakePhoto.bottomAnchor, constant: 16),
            buttonAdd.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
