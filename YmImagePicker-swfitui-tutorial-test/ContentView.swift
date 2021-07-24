//
//  ContentView.swift
//  YmImagePicker-swfitui-tutorial-test
//
//  Created by Jeff Jeong on 2021/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel : YPImagePickerVM
    
    @State private var showingSheet = false

    @State private var selectedImage : UIImage?
    
        var body: some View {
            VStack{
                
                if (selectedImage != nil) {
                    Image(uiImage: selectedImage ?? UIImage(systemName: "photo")!)
                }
                
                Button("YPImagePicker 띄우기") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
    //                SheetView()
                    YPImagePickerSwiftUIView()
                }
            }//VStack
            .onReceive(viewModel.$selectedItems, perform: { selectedImages in
                print(#fileID, #function, #line, "")
                
                if let firstImage = selectedImages.first {
                    switch firstImage {
                    case .photo(let photo):
                        self.selectedImage = photo.image
                    default: break
                    }
                } else {
                    self.selectedImage = nil
                }
            })
        }
}

struct SheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
//    and `presentationMode.wrappedValue.dismiss() instead.
    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
