//
//  ChatInputAccesoryView.swift
//  SimpleChat
//
//  Created by 宮野智宏 on 2021/06/15.
//

import UIKit

class ChatInputAccesoryView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        nibInit()
    }
    
    private func nibInit() {
        let nib = UINib(nibName: "ChatInputAccesoryView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {return}
        
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
