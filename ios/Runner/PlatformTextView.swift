//
//  PlatformTextView.swift
//  Runner
//
//  Created by YaphetS on 2020/9/21.
//

import Foundation
import Flutter

class PlatformTextView : NSObject,FlutterPlatformView{
    let frame : CGRect;
    let viewID : Int64;
    var text:String = "";
    
    init(_ frame: CGRect,viewID: Int64,args :Any?) {
        self.frame = frame
        self.viewID = viewID
        if(args is NSDictionary){
            let dict = args as! NSDictionary
            self.text = dict.value(forKey: "text") as! String
       }
    }
    
    func view() -> UIView {
        let label = UILabel()
        label.text = self.text
        label.textColor = UIColor.red
        label.frame = self.frame
        return label
    }
}
