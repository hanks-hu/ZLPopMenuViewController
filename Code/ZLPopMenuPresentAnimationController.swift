//
//  ZLPopMenuPresentAnimationController.swift
//  ZLPopMenu
//
//  Created by 胡智林 on 2018/12/17.
//  Copyright © 2018 胡智林. All rights reserved.
//

import UIKit

final public class ZLPopMenuPresentAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    /// Source view's frame.
    private let sourceFrame: CGRect?
    
    /// Initializer with source view's frame.
    init(sourceFrame: CGRect?) {
        self.sourceFrame = sourceFrame
    }
    
    
    
    /// Duration of the transition.
    public func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.25
    }
    
    /// Animate PopMenuViewController custom transition.
    public func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let menuViewController = transitionContext.viewController(forKey: .to) as? ZLPopMenuViewController else { return }
        
        let containerView = transitionContext.containerView
        let view = menuViewController.view!
        view.frame = containerView.frame
        containerView.addSubview(view)
        
        prepareAnimation(menuViewController)
        
        let animationDuration = transitionDuration(using: transitionContext)
        let animations = {
            self.animate(menuViewController)
        }
        
        UIView.animate(withDuration: animationDuration, delay: 0, options: UIView.AnimationOptions.curveEaseInOut, animations: animations) { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
    }
    
    /// States before animation.
    fileprivate func prepareAnimation(_ viewController: ZLPopMenuViewController) {
        viewController.contentView.alpha = 0
        viewController.backgroundView.alpha = 0
        viewController.contentView.transform = CGAffineTransform.init(scaleX: 0.01, y: 0.01)
        
    }
    
    /// Run the animation.
    fileprivate func animate(_ viewController: ZLPopMenuViewController) {
        viewController.contentView.alpha = 1
        viewController.backgroundView.alpha = 1
        viewController.contentView.transform = CGAffineTransform.init(scaleX: 1, y: 1)
        
        
    }
    
}
