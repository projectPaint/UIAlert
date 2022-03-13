//
//  ViewController.swift
//  paintApp(T)
//
//  Created by user on R 4/02/20.
//

import UIKit

class ViewController: UIViewController {
    //アラート
    var alertYobidasi: UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ボタン（アラート表示確認用）
    @IBAction func buttonAction(_ sender: Any){
        popumMassage(title: "保存が完了しました。", massage: "", buttonMassage1: "OK", buttonMassage2:"" )
    }
    
    //bumu2022/02/20-------------------------------------------------------------------------------
        //ポップアップメッセージ　呼び出し「引数に文字入れてね！」
    func popumMassage(title:String,massage:String,buttonMassage1:String,buttonMassage2:String)
    {
        alertYobidasi = UIAlertController(title: title, message: massage, preferredStyle: .alert)
            //アラート内のボタン1[決定系]
        alertYobidasi.addAction(UIAlertAction(title:buttonMassage1 , style: .default, handler:{
            (action: UIAlertAction!) -> Void in
            print("決定系、動作")
        }))
            //アラート内のボタン2「キャンセル系」左
        //alertYobidasi.addAction(UIAlertAction(title:buttonMassage2 , style: .default, handler:{
            //(action: UIAlertAction!) -> Void in
            //print("キャンセル系、動作")
        //}))
        present(alertYobidasi, animated: true)
    }
    //bumu2022/02/20-------------------------------------------------------------------------------
}

