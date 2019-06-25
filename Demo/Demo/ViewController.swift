//
//  ViewController.swift
//  Demo
//
//  Created by 阳君 on 2019/6/25.
//  Copyright © 2019 YJCocoa. All rights reserved.
//

import UIKit
import Flutter

class FlutterViewController1: FlutterViewController {
    deinit {
        print("释放");
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
//        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!;
//        flutterViewController.setInitialRoute("route1")
//
        let flutterViewController = FlutterViewController1(nibName: nil, bundle: nil)
        flutterViewController.setInitialRoute("route1")
        let methodChannel = FlutterMethodChannel(name: "com.flutterbus/demo", binaryMessenger: flutterViewController)
//        methodChannel.setMethodCallHandler { (call: FlutterMethodCall, result: FlutterResult) in
//            print(call)
//        }
        
        self.navigationController?.pushViewController(flutterViewController, animated: true)
    }


}

