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
    
    weak var flutterEngine : FlutterEngine?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        self.flutterEngine?.destroyContext()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
//        FlutterChannelManager
//        [FlutterChannelManager registeMethodChannel:flutterEngine];
//        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!
        let flutterViewController = FlutterViewController1()
        flutterViewController.setInitialRoute("route1")// 内存泄漏
//        let methodChannel = FlutterMethodChannel(name: "com.flutterbus/demo", binaryMessenger: flutterEngine!)
        
//        FlutterMethodChannel *flutterChannel = [FlutterMethodChannel methodChannelWithName:FLUTTER_METHOD_CHANNEL binaryMessenger:binaryMessenger];
//        [flutterChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call,       FlutterResult  _Nonnull result) {
//            }];
        
        self.flutterEngine = flutterViewController.engine
        
//        let methodChannel = FlutterMethodChannel(name: "com.flutterbus/demo", binaryMessenger: flutterViewController)
//        methodChannel.setMethodCallHandler { (call: FlutterMethodCall, result: FlutterResult) in
//            print(call)
//        }
        
        self.navigationController?.pushViewController(flutterViewController, animated: false)
//        flutterViewController.engine.destroyContext()
//        flutterViewController.pushRoute("route1")
    }


}

