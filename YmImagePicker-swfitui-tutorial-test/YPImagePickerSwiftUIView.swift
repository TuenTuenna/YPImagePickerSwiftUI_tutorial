//
//  YPImagePickerSwiftuiView.swift
//  YmImagePicker-swfitui-tutorial-test
//
//  Created by Jeff Jeong on 2021/07/24.
//

import Foundation
import SwiftUI
import UIKit
import YPImagePicker
import AVFoundation
import AVKit
import Photos

struct YPImagePickerSwiftUIView: UIViewControllerRepresentable {

    @EnvironmentObject var ypImagePickerVM : YPImagePickerVM
    
    func makeUIViewController(context: Context) -> YPImagePickerVC {
        let ypImagePickerVC = YPImagePickerVC(ypImagePickerVM)
        
        return ypImagePickerVC
    }

    func updateUIViewController(_ ypImagePickerVC: YPImagePickerVC, context: Context) {
//        pageViewController.setViewControllers(
//            [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
