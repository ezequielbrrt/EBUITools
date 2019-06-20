//
//  EBUIView.swift
//  EBUITools
//
//  Created by Ezequiel Barreto on 6/19/19.
//

extension UIView{
    
    public func setGradient(color1: UIColor, color2: UIColor){
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = (self.frame.size)
        gradientLayer.colors =
            [color1.cgColor,
            color2.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        //Use diffrent colors
        self.layer.insertSublayer(gradientLayer, at:0)
    }
    
    public func upView(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.origin.y = self.frame.origin.y - points
        self.frame = NewFrame
    }
    
    public func downView(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.origin.y = self.frame.origin.y + points
        self.frame = NewFrame
    }
    
    public func pushViewCenter(points : CGFloat) {
        var NewFrame : CGPoint = self.center
        NewFrame.x = self.center.x + points;
        self.center = NewFrame
    }
    
    public func pullViewCenter(points : CGFloat) {
        var NewFrame : CGPoint = self.center
        NewFrame.x = self.center.x - points;
        self.center = NewFrame
    }
    
    public func shortenHeight(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.size.height = self.frame.size.height - points
        self.frame = NewFrame
    }
    
    public func addHeight(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.size.height = self.frame.size.height + points
        self.frame = NewFrame
    }
    
    public func removeHeight(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.size.height = self.frame.size.height - points
        self.frame = NewFrame
    }
    
    public func addWidth(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.size.width = self.frame.size.width + points;
        self.frame = NewFrame
    }
    
    public func shortenWidth(points : CGFloat) {
        var NewFrame : CGRect = self.frame
        NewFrame.size.width = self.frame.size.width - points;
        self.frame = NewFrame
    }
    
    public func doPushEffect(duration : Double, scale : CGFloat)
    {
        
        UIView.animate(withDuration: duration, delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations:
            {
                self.transform = CGAffineTransform(scaleX: scale, y: scale)
                self.alpha = 0.75
                
        }, completion:
            { _ in
                UIView.animate(withDuration: duration, delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations:
                    {
                        self.transform = CGAffineTransform(scaleX: 1, y: 1)
                        self.alpha = 1
                        
                }, completion:nil)
                
        })
    }
    
    public func animatedRebound(scaleMin: CGFloat, scaleMax: CGFloat, duration : Double, damping : CGFloat) {
        self.transform = CGAffineTransform(scaleX: scaleMin, y: scaleMin)
        
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.transform = .identity
            self.transform = CGAffineTransform(scaleX: scaleMax, y: scaleMax)
        }, completion:nil)
        
    }
    
    public func shakeAnimation(moveScale : CGFloat, minimumAlpha : CGFloat, duration : CGFloat){
        let partialDuration : CGFloat = duration / CGFloat(3)
        
        UIView.animate(withDuration: TimeInterval(partialDuration), delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations:
            {
                self.pushViewCenter(points: moveScale)
                self.alpha = minimumAlpha
                
        }, completion:
            { _ in
                UIView.animate(withDuration: TimeInterval(partialDuration), delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations:
                    {
                        self.pullViewCenter(points: (moveScale * CGFloat(2)))
                        
                }, completion:
                    { _ in
                        UIView.animate(withDuration: TimeInterval(partialDuration), delay: 0.0, options: UIView.AnimationOptions.curveEaseInOut, animations:
                            {
                                self.pushViewCenter(points: moveScale)
                                self.alpha = 1.0
                                
                        }, completion:nil)
                })
        })
    }
    
    public func drawShadow(shadowSize: CGFloat, shadowOpacity: CGFloat){
        
        let shadowPath = UIBezierPath(rect: CGRect(x: -shadowSize / 2,
                                                   y: -shadowSize / 2,
                                                   width: self.frame.size.width + shadowSize,
                                                   height: self.frame.size.height + shadowSize))
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor;
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowOpacity = Float(shadowOpacity)
        self.layer.shadowPath = shadowPath.cgPath
        
    }
    
    public func offAlpha(view : UIView){
        view.alpha = 0
    }
    
    public func onAlpha(view : UIView){
        view.alpha = 1
    }
    
}
