//
//  Constant.swift
//  MyResumeApp
//
//  Created by Jane Chao on 22/04/20.
//

import Foundation

typealias Experience = (title: String, company: String, start: String, end: String)

struct Resume {
    static let shared = Resume()
    let name     = "Esther Tsui"
    let title    = "iOS Developer"
    let location = "Location: London"
    let bio      = "Self taught iOS developer. Passionate about Swift😊"
    let skills   = ["Final Cut Pro", "GitHub", "Swift", "Xcode"]
    let experiences: [Experience] = [("MyResume",
                                      "available on my GitHub: https://github.com/esther-tsui",
                                      "May, 2023",
                                      "present"),
                                     ("Landmarks",
                                      "available on my GitHub: https://github.com/esther-tsui",
                                      "May, 2023",
                                      "present"),
                                     ("Web Developer",
                                      "available on my GitHub: https://github.com/esther-tsui",
                                      "April, 2023",
                                      "May, 2023")]
    let phoneUrl = "tel://07763522809"
    let socialMedia: [(name: String, url: String)] = [("LinkedIn","https://www.linkedin.com/in/tsuiwinghei/"),
        ("YouTube","https://www.youtube.com/@estheresty")]
}

