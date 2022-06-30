import SwiftUI

public extension CGPoint{
    
    func mult(by value: CGFloat) -> CGPoint{
        CGPoint(x: x * value,
                y: y * value)
    }
    
    func constrained(by rect: CGRect) -> CGPoint{
        let x = self.x
        let y = self.y
        let minX = rect.minX
        let maxX = rect.maxX
        let minY = rect.minY
        let maxY = rect.maxY
        
        return CGPoint(x: max(minX, min(maxX, x)),
                       y: max(minY, min(maxY, y)))
    }
    
    func length() -> CGFloat{
        sqrt(x * x + y * y)
    }
    
    func normalized() -> CGPoint {
        let len = length()
        return len>0 ? self / len : .zero
    }
}

public extension CGPoint{
    
    static func +(lhs: CGPoint, rhs: CGFloat) -> CGPoint{
        CGPoint(
            x: lhs.x + rhs,
            y: lhs.y + rhs
        )
    }
    static func +(lhs: CGPoint, rhs: CGSize) -> CGPoint{
        CGPoint(
            x: lhs.x + rhs.width,
            y: lhs.y + rhs.height
        )
    }
    static func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint{
        CGPoint(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y
        )
    }
    static func +(lhs: CGPoint, rhs: CGFloat) -> CGSize{
        CGSize(
            width: lhs.x + rhs,
            height: lhs.y + rhs
        )
    }
    static func +(lhs: CGPoint, rhs: CGPoint) -> CGSize{
        CGSize(
            width: lhs.x + rhs.x,
            height: lhs.y + rhs.y
        )
    }
    static func +(lhs: CGPoint, rhs: CGSize) -> CGSize{
        CGSize(
            width: lhs.x + rhs.width,
            height: lhs.y + rhs.height
        )
    }
    
    static func -(lhs: CGPoint, rhs: CGFloat) -> CGSize{
        CGSize(
            width: lhs.x - rhs,
            height: lhs.y - rhs
        )
    }
    static func -(lhs: CGPoint, rhs: CGSize) -> CGSize{
        CGSize(
            width: lhs.x - rhs.width,
            height: lhs.y - rhs.height
        )
    }
    static func -(lhs: CGPoint, rhs: CGPoint) -> CGSize{
        CGSize(
            width: lhs.x - rhs.x,
            height: lhs.y - rhs.y
        )
    }
    
    static func -(lhs: CGPoint, rhs: CGFloat) -> CGPoint{
        CGPoint(
            x: lhs.x - rhs,
            y: lhs.y - rhs
        )
    }
    static func -(lhs: CGPoint, rhs: CGSize) -> CGPoint{
        CGPoint(
            x: lhs.x - rhs.width,
            y: lhs.y - rhs.height
        )
    }
    static func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint{
        CGPoint(x: lhs.x - rhs.x,
                y: lhs.y - rhs.y)
    }
    
    static func +=(lhs: inout CGPoint, rhs: CGFloat) {
        lhs = CGPoint(
            x: lhs.x + rhs,
            y: lhs.y + rhs
        )
    }
    static func +=(lhs: inout CGPoint, rhs: CGPoint) {
        lhs = CGPoint(
            x: lhs.x + rhs.x,
            y: lhs.y + rhs.y
        )
    }
    static func +=(lhs: inout CGPoint, rhs: CGSize) {
        lhs = CGPoint(
            x: lhs.x + rhs.width,
            y: lhs.y + rhs.height
        )
    }
    
    static func -=(lhs: inout CGPoint, rhs: CGFloat) {
        lhs = CGPoint(
            x: lhs.x - rhs,
            y: lhs.y - rhs
        )
    }
    static func -=(lhs: inout CGPoint, rhs: CGPoint) {
        lhs = CGPoint(
            x: lhs.x - rhs.x,
            y: lhs.y - rhs.y
        )
    }
    static func -=(lhs: inout CGPoint, rhs: CGSize) {
        lhs = CGPoint(
            x: lhs.x - rhs.width,
            y: lhs.y - rhs.height
        )
    }
    
    static func /(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.x / rhs,
                y: lhs.y / rhs)
    }
    static func /(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x / rhs.x,
                y: lhs.y / rhs.y)
    }
    static func /(lhs: CGPoint, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.x / rhs.width,
                y: lhs.y / rhs.height)
    }
    
    static func /(lhs: CGPoint, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.x / rhs,
               height: lhs.y / rhs)
    }
    static func /(lhs: CGPoint, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.x / rhs.x,
               height: lhs.y / rhs.y)
    }
    static func /(lhs: CGPoint, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.x / rhs.width,
               height: lhs.y / rhs.height)
    }
    
    static func *(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
        CGPoint(x: lhs.x * rhs,
                y: lhs.y * rhs)
    }
    static func *(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x * rhs.x,
                y: lhs.y * rhs.y)
    }
    static func *(lhs: CGPoint, rhs: CGSize) -> CGPoint {
        CGPoint(x: lhs.x * rhs.width,
                y: lhs.y * rhs.width)
    }
    
    static func *(lhs: CGPoint, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.x * rhs,
               height: lhs.y * rhs)
    }
    static func *(lhs: CGPoint, rhs: CGPoint) -> CGSize {
        CGSize(width: lhs.x * rhs.x,
               height: lhs.y * rhs.y)
    }
    static func *(lhs: CGPoint, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.x * rhs.width,
               height: lhs.y * rhs.width)
    }
}
