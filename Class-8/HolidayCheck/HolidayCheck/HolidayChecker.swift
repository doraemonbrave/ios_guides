//
//  HolidayChecker.swift
//  HolidayCheck
//
//  Created by Benjamin Sandofsky on 11/1/15.
//  Copyright © 2015 CodePath. All rights reserved.
//
import Foundation

extension HolidayChecker: HolidayCheckable {
    func checkDateForHoliday(date: NSDate) -> Holiday? {
        let components = NSCalendar.currentCalendar().components(
            [NSCalendarUnit.Day, NSCalendarUnit.Month], fromDate: date)
        switch (self, components.month, components.day) {
        case (.Christmas, 12, 25):
            return ChristmasHoliday()
        case (.NewYears, 1, 1):
            return NewYearsHoliday()
        default:
            return nil
        }
    }
}

