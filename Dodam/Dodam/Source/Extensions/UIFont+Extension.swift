//
//  UIFont+Extension.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/17.
//

import UIKit

struct AppFontName {
    static let enBold = "Lato-Bold"
    static let enRegular = "Lato-Regular"
    static let krLight = "AppleSDGothicNeoL"
    static let krMedium = "AppleSDGothicNeoM"
    static let krBold = "AppleSDGothicNeoB"
}

extension UIFontDescriptor.AttributeName {
    static let nsctFontUIUsage = UIFontDescriptor.AttributeName(rawValue: "NSCTFontUIUsageAttribute")
}

extension UIFont {
    @objc class func enBoldSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.enBold, size: size)!
    }
    
    @objc class func enRegularSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.enRegular, size: size)!
    }
    
    class func AppleSDGothicNeo(type: AppleSDGothicNeoType, size: CGFloat) -> UIFont! {
            guard let font = UIFont(name: type.name, size: size) else {
                return nil
            }
            return font
        }

        public enum AppleSDGothicNeoType {
            case Bold
            case Medium
            case Light

            var name: String {
                switch self {
                case .Bold:
                    return "AppleSDGothicNeoB"
                case .Medium:
                    return "AppleSDGothicNeoM"
                case .Light:
                    return "AppleSDGothicNeoL"

                }
            }
        }
    
//    @objc class func krLightSystemFont(ofSize size: CGFloat) -> UIFont {
//        return UIFont(name: AppFontName.krLight, size: size)!
//    }
//
//    @objc class func krMediumSystemFont(ofSize size: CGFloat) -> UIFont {
//        return UIFont(name: AppFontName.krMedium, size: size)!
//    }
//
//    @objc class func krBoldSystemFont(ofSize size: CGFloat) -> UIFont {
//        return UIFont(name: AppFontName.krBold, size: size)!
//    }

//    @objc convenience init(myCoder aDecoder: NSCoder) {
//        if let fontDescriptor = aDecoder.decodeObject(forKey: "UIFontDescriptor") as? UIFontDescriptor {
//            if let fontAttribute = fontDescriptor.fontAttributes[.nsctFontUIUsage] as? String {
//                var fontName = ""
//                switch fontAttribute {
//                case "CTFontRegularUsage":
//                    fontName = AppFontName.krLight
//                case "CTFontEmphasizedUsage", "CTFontBoldUsage":
//                    fontName = AppFontName.krMedium
//                case "CTFontObliqueUsage":
//                    fontName = AppFontName.krBold
//                default:
//                    fontName = AppFontName.krMedium
//                }
//                self.init(name: fontName, size: fontDescriptor.pointSize)!
//            }
//            else {
//                self.init(myCoder: aDecoder)
//            }
//        }
//        else {
//            self.init(myCoder: aDecoder)
//        }
//    }
//
//    class func overrideInitialize() {
//        if self == UIFont.self {
//            let systemFontMethod = class_getClassMethod(self, #selector(systemFont(ofSize:)))
//            let mySystemFontMethod = class_getClassMethod(self, #selector(krLightSystemFont(ofSize:)))
//            method_exchangeImplementations(systemFontMethod!, mySystemFontMethod!)
//
//            let mediumSystemFontMethod = class_getClassMethod(self, #selector(systemFont(ofSize:)))
//            let myMediumSystemFontMethod = class_getClassMethod(self, #selector(krMediumSystemFont(ofSize:)))
//            method_exchangeImplementations(mediumSystemFontMethod!, myMediumSystemFontMethod!)
//
//            let boldSystemFontMethod = class_getClassMethod(self, #selector(boldSystemFont(ofSize:)))
//            let myBoldSystemFontMethod = class_getClassMethod(self, #selector(krBoldSystemFont(ofSize:)))
//            method_exchangeImplementations(boldSystemFontMethod!, myBoldSystemFontMethod!)
//
//            let initCoderMethod = class_getInstanceMethod(self, #selector(UIFontDescriptor.init(coder:))) // Trick to get over the lack of UIFont.init(coder:))
//            let myInitCoderMethod = class_getInstanceMethod(self, #selector(UIFont.init(myCoder:)))
//            method_exchangeImplementations(initCoderMethod!, myInitCoderMethod!)
//        }
//    }
}

