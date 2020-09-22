//
//  PlatformTextViewFactory.swift
//  Runner
//
//  Created by YaphetS on 2020/9/21.
//

import Foundation
import Flutter

class PlatformTextViewFactory:NSObject,FlutterPlatformViewFactory {
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
           return PlatformTextView(frame,viewID: viewId,args: args)
       }
    func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}
