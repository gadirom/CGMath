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
    
    init(_ p: CGPoint){
        self.init(width:p.x, height:p.y)
    }
    
    func length() -> CGFloat{
        sqrt(width * width + height * height)
    }
    
    func normalized() -> CGSize {
        let len = length()
        return len>0 ? self / len : .zero
    }
}

public extension CGSize{
    
    static func +=(lhs: inout CGSize, rhs: CGFloat) {
        lhs = CGSize(
            width: lhs.width + rhs,
            height: lhs.height + rhs
        )
    }
    static func +=(lhs: inout CGSize, rhs: CGSize) {
        lhs = CGSize(
            width: lhs.width + rhs.width,
            height: lhs.height + rhs.height
        )
    }
    static func +=(lhs: inout CGSize, rhs: CGPoint) {
        lhs = CGSize(
            width: lhs.width + rhs.x,
            height: lhs.height + rhs.y
        )
    }
    
    static func +(lhs: CGSize, rhs: CGFloat) -> CGSize{
        CGSize(
            width: lhs.width + rhs,
            height: lhs.height + rhs
        )
    }
    static func +(lhs: CGSize, rhs: CGPoint) -> CGSize{
        CGSize(
            width: lhs.width + rhs.x,
            height: lhs.height + rhs.y
        )
    }
    static func +(lhs: CGSize, rhs: CGSize) -> CGSize{
        CGSize(
            width: lhs.width + rhs.width,
            height: lhs.height + rhs.height
        )
    }
    
    static func +(lhs: CGSize, rhs: CGFloat) -> CGPoint{
        CGPoint(
            x: lhs.width + rhs,
            y: lhs.height + rhs
        )
    }
    static func +(lhs: CGSize, rhs: CGPoint) -> CGPoint{
        CGPoint(
            x: lhs.width + rhs.x,
            y: lhs.height + rhs.y
        )
    }
    static func +(lhs: CGSize, rhs: CGSize) -> CGPoint{
        CGPoint(
            x: lhs.width + rhs.width,
            y: lhs.height + rhs.height
        )
    }
    
    static func -(lhs: CGSize, rhs: CGFloat) -> CGSize{
        CGSize(
            width: lhs.width - rhs,
            height: lhs.height - rhs
        )
    }
    static func -(lhs: CGSize, rhs: CGSize) -> CGSize{
        CGSize(
            width: lhs.width - rhs.width,
            height: lhs.height - rhs.height
        )
    }
    static func -(lhs: CGSize, rhs: CGPoint) -> CGSize{
        CGSize(
            width: lhs.width - rhs.x,
            height: lhs.height - rhs.y
        )
    }
    
    static func -(lhs: CGSize, rhs: CGFloat) -> CGPoint{
        CGPoint(
            x: lhs.width - rhs,
            y: lhs.height - rhs
        )
    }
    static func -(lhs: CGSize, rhs: CGSize) -> CGPoint{
        CGPoint(
            x: lhs.width - rhs.width,
            y: lhs.height - rhs.height
        )
    }
    static func -(lhs: CGSize, rhs: CGPoint) -> CGPoint{
        CGPoint(
            x: lhs.width - rhs.x,
            y: lhs.height - rhs.y
        )
    }
    
    static func  *(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width * rhs,
               height: lhs.height * rhs)
    }
    static func  *(lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width * rhs.x,
               height: lhs.height * rhs.y)
    }
    static func  *(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width * rhs.width,
               height: lhs.height * rhs.height)
    }
    
    static func  *(lhs: CGSize, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.width * rhs,
                y: lhs.height * rhs)
    }
    static func  *(lhs: CGSize, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.width * rhs.x,
                y: lhs.height * rhs.y)
    }
    static func  *(lhs: CGSize, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.width * rhs.width,
                y: lhs.height * rhs.height)
    }
    
    static func  /(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width / rhs,
               height: lhs.height / rhs)
    }
    static func  /(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width / rhs.width,
               height: lhs.height / rhs.height)
    }
    static func  /(lhs: CGSize, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.width / rhs.x,
               height: lhs.height / rhs.y)
    }
    
    static func  /(lhs: CGSize, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.width / rhs,
                y: lhs.height / rhs)
    }
    static func  /(lhs: CGSize, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.width / rhs.width,
                y: lhs.height / rhs.height)
    }
    static func  /(lhs: CGSize, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.width / rhs.x,
                y: lhs.height / rhs.y)
    }
}




