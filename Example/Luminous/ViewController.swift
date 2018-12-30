//
//  ViewController.swift
//  Luminous
//
//  Created by Andrea Mario Lufino on 10/20/2016.
//  Copyright (c) 2016 Andrea Mario Lufino. All rights reserved.
//

import UIKit
import Luminous

class ViewController: UIViewController {

    @IBOutlet weak var device_current: UILabel!
    @IBOutlet weak var device_id: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.device_current.text = "Current: \(Luminous.System.Hardware.Device.current)"
        self.device_id.text = "Identifier: \(Luminous.System.Hardware.Device.identifierForVendor ?? "-")"
        
        // MARK: Network
        
        print("------------\nNetwork\n------------")
        print("isConnectedViaCellular: \(Luminous.System.Network.isConnectedViaCellular)")
        print("isConnectedViaWiFi: \(Luminous.System.Network.isConnectedViaWiFi)")
        print("SSID: \(Luminous.System.Network.SSID)")
        
        
        // MARK: Locale
        
        print("------------\nLocale\n------------")
        print("currentCountry: \(Luminous.System.Locale.currentCountry)")
        print("currentCurrency: \(Luminous.System.Locale.currentCurrency ?? "-")")
        print("currentCurrencySymbol: \(Luminous.System.Locale.currentCurrencySymbol ?? "-")")
        print("currentLanguage: \(Luminous.System.Locale.currentLanguage)")
        print("currentTimeZone: \(Luminous.System.Locale.currentTimeZone)")
        print("currentTimeZoneName: \(Luminous.System.Locale.currentTimeZoneName)")
        print("decimalSeparator: \(Luminous.System.Locale.decimalSeparator ?? "-")")
        print("usesMetricSystem: \(Luminous.System.Locale.usesMetricSystem)")
        
        
        // MARK: Carrier
        
        print("------------\nCarrier\n------------")
        print("allowsVOIP: \(Luminous.System.Carrier.allowsVOIP ?? false)")
        print("ISOCountryCode: \(Luminous.System.Carrier.ISOCountryCode ?? "-")")
        print("mobileCountryCode: \(Luminous.System.Carrier.mobileCountryCode ?? "-")")
        print("name: \(Luminous.System.Carrier.name ?? "-")")
        print("networkCountryCode: \(Luminous.System.Carrier.mobileNetworkCode ?? "-")")
        
        
        // MARK: Hardware
        
        print("------------\nHardware\n------------")
        print("bootTime: \(Luminous.System.Hardware.bootTime)")
        print("bootTime: \(Luminous.System.Hardware.physicalMemory(withSizeScale: .megabytes))")
        print("processorsNumber: \(Luminous.System.Hardware.processorsNumber)")
        print("systemName: \(Luminous.System.Hardware.systemName)")
        print("systemVersion: \(Luminous.System.Hardware.systemVersion)")
        if #available(iOS 9.0, *) {
            print("isLowPowerModeEnabled: \(Luminous.System.Hardware.isLowPowerModeEnabled)")
        }
        
        
        // MARK: Hardware - Screen
        
        print("------------\nScreen\n------------")
        print("bounds: \(Luminous.System.Hardware.Screen.bounds)")
        print("brightness: \(Luminous.System.Hardware.Screen.brightness)")
        print("isScreenMirrored: \(Luminous.System.Hardware.Screen.isScreenMirrored)")
        print("nativeBounds: \(Luminous.System.Hardware.Screen.nativeBounds)")
        print("nativeScale: \(Luminous.System.Hardware.Screen.nativeScale)")
        print("bounds: \(Luminous.System.Hardware.Screen.scale)")
//        print("snapshotOfCurrentView: \(Luminous.System.Hardware.Screen.snapshotOfCurrentView())")
        
        
        // MARK: Hardware - Device
        
        print("------------\nDevice\n------------")
        print("current: \(Luminous.System.Hardware.Device.current)")
        print("identifierForVendor: \(Luminous.System.Hardware.Device.identifierForVendor ?? "-")")
        print("orientation: \(Luminous.System.Hardware.Device.orientation)")
        
        
        // MARK: Hardware - Accessory
        
        print("------------\nAccessory\n------------")
        print("connectedAccessories: \(Luminous.System.Hardware.Accessory.connectedAccessories)")
        print("connectedAccessoriesNames: \(Luminous.System.Hardware.Accessory.connectedAccessoriesNames)")
        print("count: \(Luminous.System.Hardware.Accessory.count)")
        print("isHeadsetPluggedIn: \(Luminous.System.Hardware.Accessory.isHeadsetPluggedIn)")
        
        
        // MARK: Hardware - Sensors
        
        print("------------\nSensors\n------------")
        print("isAccelerometerAvailable : \(Luminous.System.Hardware.Sensors.isAccelerometerAvailable)")
        print("isGyroAvailable : \(Luminous.System.Hardware.Sensors.isGyroAvailable)")
        print("isMagnetometerAvailable : \(Luminous.System.Hardware.Sensors.isMagnetometerAvailable)")
        print("isDeviceMotionAvailable : \(Luminous.System.Hardware.Sensors.isDeviceMotionAvailable)")
        
        
        // MARK: Disk
        
        print("------------\nDisk\n------------")
        print("freeSpace: \(Luminous.System.Disk.freeSpace)")
        print("freeSpaceInBytes: \(Luminous.System.Disk.freeSpaceInBytes)")
        print("totalSpace: \(Luminous.System.Disk.totalSpace)")
        print("totalSpaceInBytes: \(Luminous.System.Disk.totalSpaceInBytes)")
        print("usedSpace: \(Luminous.System.Disk.usedSpace)")
        print("usedSpaceInBytes: \(Luminous.System.Disk.usedSpaceInBytes)")
        print("freeSpaceInPercentage: \(Luminous.System.Disk.freeSpaceInPercentage)%")
        print("usedSpaceInPercentage: \(Luminous.System.Disk.usedSpaceInPercentage)%")
        
        
        // MARK: Battery
        
        print("------------\nBattery\n------------")
        print("level: \(Luminous.System.Battery.level ?? -1)")
        print("state: \(Luminous.System.Battery.state)")
        
        
        // MARK: Application
        
        print("------------\nApplication\n------------")
        print("clipboardString: \(Luminous.System.Application.clipboardString ?? "-")")
        print("version: \(Luminous.System.Application.version)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

