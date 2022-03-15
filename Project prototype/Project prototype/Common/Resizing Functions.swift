//
//  Resizing Functions.swift
//  Project prototype
//
//  Created by MacBook on 16.03.2022.
//

import SwiftUI


func Get_Width (w: CGFloat) -> CGFloat
{
 return UIScreen.main.bounds.width * w
}

func Get_Height (h: CGFloat) -> CGFloat
{
    return UIScreen.main.bounds.height * h
}
