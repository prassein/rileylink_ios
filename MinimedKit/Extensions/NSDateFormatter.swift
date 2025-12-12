//
//  NSDateFormatter.swift
//  RileyLink
//
//  Created by Nate Racklyeft on 6/15/16.
//  Copyright © 2016 Pete Schwamb. All rights reserved.
//

import Foundation


public extension DateFormatter {
    public class func ISO8601DateFormatter() -> Self {
        let formatter = self.init()
        formatter.calendar = Calendar(identifier: Calendar.Identifier.iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssX"

        return formatter
    }
}
