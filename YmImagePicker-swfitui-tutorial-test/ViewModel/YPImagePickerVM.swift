//
//  YPImagePickerVM.swift
//  YmImagePicker-swfitui-tutorial-test
//
//  Created by Jeff Jeong on 2021/07/24.
//

import Foundation
import Combine
import UIKit
import YPImagePicker
import AVFoundation
import AVKit
import Photos

class YPImagePickerVM: ObservableObject {
    
    @Published var selectedItems : [YPMediaItem] = [] {
        didSet {
            print(#fileID, #function, #line, "selectedItems: \(selectedItems.count)")
        }
    }
    
}
