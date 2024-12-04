import SwiftUI
import Foundation

struct User:Identifiable {
    let id = UUID()
    let login:String
    let password:String
    let name:String
    let surname:String
    let accountValue:Float
    let currency:String
}
