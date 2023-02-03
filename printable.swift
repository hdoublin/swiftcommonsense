import Foundation
func printable<T: Codable>(from data: T, placeHolder: String = "") {
    #if DEBUG
    guard let tmp = try? JSONEncoder().encode(data) else { return }
    let str = String(data: tmp, encoding: .utf8)
    print("📫\(placeHolder)", str ?? "")
    #endif
}