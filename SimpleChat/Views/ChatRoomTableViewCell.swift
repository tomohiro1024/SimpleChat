//
//  ChatRoomTableViewCell.swift
//  SimpleChat
//
//  Created by 宮野智宏 on 2021/06/13.
//

import UIKit

class ChatRoomTableViewCell: UITableViewCell {
    
    var message: Message? {
        didSet {
            if let message = message {
                partnerMessageTextView.text = message.message
                let width = estimateFrameForTextView(text: message.message).width + 20
                messageTextViewWidthConstraint.constant = width
                partnerDateLabel.text = dateFormatterForDateLabel(date: message.createdAt.dateValue())
                
            }
            
        }
        
    }
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var partnerMessageTextView: UITextView!
    @IBOutlet weak var myMessageTextView: UITextView!
    
    @IBOutlet weak var partnerDateLabel: UILabel!
    
    @IBOutlet weak var myDateLabel: UILabel!
    
    @IBOutlet weak var messageTextViewWidthConstraint: NSLayoutConstraint!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        userImageView.layer.cornerRadius = 35
        partnerMessageTextView.layer.cornerRadius = 15
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func estimateFrameForTextView(text: String) -> CGRect{
        let size = CGSize(width: 200, height: 1000)
        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        
        return NSString(string: text).boundingRect(with: size, options: options, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)], context: nil)
    }
    
    private func dateFormatterForDateLabel(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter.string(from: date)
    }
    
}
