import Foundation

struct Player: Equatable {
    var name: String
    var nickname: String?
    
    init(_ name: String, _ nickname: String? = nil) {
        self.name = name
        self.nickname = nickname
    }
}
