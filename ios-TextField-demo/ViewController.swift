//
//  ViewController.swift
//  ios-TextField-demo
//
//  Created by Kushida　Eiji on 2017/02/02.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var formTextField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        formTextField.delegate = self
    }
    
    //MARK:-Option
    /// プレースホルダを設定する (Storyboardで設定可)
    private func setupPlaceHolder() {
        formTextField.placeholder = "do something"
    }
    
    /// キーボードタイプを設定する (Storyboardで設定可)
    private func setupKeyboardType() {
        formTextField.keyboardType = .default
    }
    
    /// クリアボタンの表示を設定する (Storyboardで設定可)
    private func setupClearButtonMode() {
        formTextField.clearButtonMode = .always
    }
    
    /// テキストのアラインを設定する (Storyboardで設定可)
    private func setupTextAlignment() {
        formTextField.textAlignment = .left
    }
    
    /// 該当のテキストフィールドにフォーカスを当てる
    private func forcus() {
        formTextField.becomeFirstResponder()
    }
    
    /// キーボードを閉じる
    private func closeKeyBoard() {
        formTextField.resignFirstResponder()
    }
}

//MARK:-UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    /// テキストフィールドを編集する直前に呼び出される
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        print(textField.text ?? "未入力")
        return true
    }

    /// テキストフィールドの編集が終了する直前に呼び出される
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        print(textField.text ?? "未入力")
        return true
    }
    
    /// テキストフィールドを編集する直後に呼び出される
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        print(textField.text ?? "未入力")
    }
    
    /// テキストフィールドの編集が終了する直後に呼び出される
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        print(textField.text ?? "未入力")
    }
    
    /// Returnボタンがタップされた時に呼ばれる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        print(textField.text ?? "未入力")
        textField.resignFirstResponder()
        return true
    }
    
    /// クリアボタンがタップされた時に呼ばれる
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        print(textField.text ?? "未入力")
        textField.resignFirstResponder()
        return true
    }
}
