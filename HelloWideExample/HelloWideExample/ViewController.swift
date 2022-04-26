//
//  ViewController.swift
//  HelloWideExample
//
//  Created by Wijaya, Ardy on 21/04/22.
//

import UIKit
import HelloWideSDK

class ViewController: UIViewController {
    let helloWide = HelloWide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let callButton = UIButton()
        callButton.translatesAutoresizingMaskIntoConstraints = false
        callButton.backgroundColor = UIColor.blue
        callButton.setTitle("Test Call", for: .normal)
        callButton.addTarget(self, action:  #selector(testCalling), for: .touchUpInside)
        self.view.addSubview(callButton)
        
        callButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        callButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        callButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
        callButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        callButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    @objc func testCalling() {
        print("Test Calling")
//        JitsiMeetConferenceOptions *options = [JitsiMeetConferenceOptions fromBuilder:^(JitsiMeetConferenceOptionsBuilder *builder) {
//            [builder setFeatureFlag:@"welcomepage.enabled" withBoolean:YES];
//            [builder setFeatureFlag:@"resolution" withValue:@(360)];
//            [builder setFeatureFlag:@"ios.screensharing.enabled" withBoolean:YES];
//            [builder setFeatureFlag:@"ios.recording.enabled" withBoolean:YES];
//            [builder setFeatureFlag:@"call-integration.enabled" withBoolean:YES];
//            [builder setFeatureFlag:@"calendar.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"chat.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"close-captions.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"add-people.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"invite.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"notifications.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"meeting-name.enabled" withBoolean:NO];
//            [builder setFeatureFlag:@"toolbox.alwaysVisible" withBoolean:YES];
//            [builder setFeatureFlag:@"overflow-menu.enabled" withBoolean:NO];
//            // Cob Purpose
//            [builder setFeatureFlag:@"local-view-only.enabled" withBoolean:YES];
//
//            builder.serverURL = [NSURL URLWithString:@"https://dev-meet.primecash.co.id/"];
//            builder.room = @"HelloWideRoom@123";
//        }];
        
        let options = HelloWideConferenceOptions.fromBuilder { builder in
            builder.setFeatureFlag("resolution", withValue: 360)
            builder.setFeatureFlag("ios.screensharing.enabled", withBoolean: true)
            builder.setFeatureFlag("ios.recording.enabled", withBoolean: true)
            builder.setFeatureFlag("call-integration.enabled", withBoolean: true)
            builder.setFeatureFlag("calendar.enabled", withBoolean: false)
            builder.setFeatureFlag("chat.enabled", withBoolean: false)
            builder.setFeatureFlag("close-captions.enabled", withBoolean: false)
            builder.setFeatureFlag("add-people.enabled", withBoolean: false)
            builder.setFeatureFlag("invite.enabled", withBoolean: false)
            builder.setFeatureFlag("notifications.enabled", withBoolean: false)
            builder.setFeatureFlag("meeting-name.enabled", withBoolean: false)
            builder.setFeatureFlag("toolbox.alwaysVisible", withBoolean: true)
            builder.setFeatureFlag("overflow-menu.enabled", withBoolean: false)
            builder.setFeatureFlag("local-view-only.enabled", withBoolean: false)
            builder.serverURL = URL.init(string: "https://dev-meet.primecash.co.id/")
            builder.room = "WideTech@123"
        }
        
//        let helloWide = JitsiMeetView()
//        helloWide.frame = self.view.frame
//        helloWide.delegate = self
//        self.view.addSubview(helloWide)
//
        helloWide.call(options)
//        helloWide.join(options)
    }
}

