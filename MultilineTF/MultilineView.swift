//
//  MultilineView.swift
//  MultilineTF
//
//  Created by Michele Manniello on 16/05/21.
//

import SwiftUI
import UIKit
struct MultiLineTF: UIViewRepresentable {
    @Binding var txt :String
    
    func makeCoordinator() -> Coordinator {
        return MultiLineTF.Coordinator(parent1: self)
    }
    
    func makeUIView(context: Context) -> UITextView {
        let tview = UITextView()
        tview.isEditable = true
        tview.isUserInteractionEnabled = true
        tview.isScrollEnabled = true
        tview.text = "Type Something"
        tview.textColor = .gray
        tview.font = .systemFont(ofSize: 20)
        tview.delegate = context.coordinator
        return tview
    }
    func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
    class Coordinator: NSObject,UITextViewDelegate {
        var parent : MultiLineTF
        init(parent1: MultiLineTF) {
            parent = parent1
        }
        func textViewDidChange(_ textView: UITextView) {
            self.parent.txt = textView.text
        }
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
//            per la darkmode uso label che è un text colo 
            textView.textColor = .label
        }
    }
    
    
}
