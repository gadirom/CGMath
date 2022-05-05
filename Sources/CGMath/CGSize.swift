import SwiftUI

public extension CGSize{
    
    func mult(by value: CGFloat) -> CGSize{
        CGSize(width: width * value,
               height: height * value)
    }
    
    func restricted(radius: CGFloat) -> CGSize{
        let r = length()
        
        return normalized().mult(by: min(r, radius))
    }
}

public extension CGSize{
    
    init(p: CGPoint){
        self.init(width:p.x, height:p.y)
    }
    
    func length() -> CGFloat{
        sqrt(width * width + height * height)
    }
    
    func normalized() -> CGSize {
        let len = length()
        return len>0 ? self / len : .zero
    }
    
    static func +=(lhs: inout CGSize, rhs: CGSize) {
        lhs = CGSize(
            width: lhs.width + rhs.width,
            height: lhs.height + rhs.height
        )
    }
    
    static func +(lhs: CGSize, rhs: CGSize) -> CGSize{
        CGSize(
            width: lhs.width + rhs.width,
            height: lhs.height + rhs.height
        )
    }
    
    static func -(lhs: CGSize, rhs: CGSize) -> CGSize{
        CGSize(
            width: lhs.width - rhs.width,
            height: lhs.height - rhs.height
        )
    }
    
    static func  *(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width * rhs,
               height: lhs.height * rhs)
    }
    
    static func  +(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width + rhs,
               height: lhs.height + rhs)
    }
    
    static func  /(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width / rhs,
               height: lhs.height / rhs)
    }
}




