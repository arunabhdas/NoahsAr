//
//  Constants.swift
//  NoahsAr
//

import UIKit


struct Constants {
	
	struct Colors {
		// static let colorZero:UIColor = UIColor(red:  241/255.0, green: 145/255.0, blue: 12/255.0, alpha: 100.0/100.0)
		// static let colorRed:UIColor = UIColor(red:  229/255.0, green: 37/255.0, blue: 36/255.0, alpha: 100.0/100.0)
		// static let colorPink:UIColor = UIColor(red:  191/255.0, green: 49/255.0, blue: 0/255.0, alpha: 100.0/100.0)
		// static let colorPinkTwo:UIColor = UIColor(red:  218/255.0, green: 48/255.0, blue: 59/255.0, alpha: 100.0/100.0)
		// static let colorFuchsia:UIColor = UIColor(red: 215/255.0, green: 51/255.0, blue: 65/255.0, alpha: 100.0/100.0)
		// static let colorFuchsiaTwo:UIColor = UIColor(red: 188/255.0, green: 73/255.0, blue: 122/255.0, alpha: 100.0/100.0)
		// static let colorPurple:UIColor = UIColor(red:  200/255.0, green: 66/255.0, blue: 95/255.0, alpha: 100.0/100.0)
		// static let colorBlue:UIColor = UIColor(red:  210/255.0, green: 40/255.0, blue: 51/255.0, alpha: 100.0/100.0)
		
		static let nicheLightBlue:UIColor = UIColor(red: 89/255.0, green: 179/255.0, blue: 196/255.0, alpha: 100.0/100.0)
		static let nicheDarkBlue:UIColor = UIColor(red: 5/255.0, green: 102/255.0, blue: 141/255.0, alpha: 100.0/100.0)
		static let nicheDarkBurgundy:UIColor = UIColor(red: 75/255.0, green: 27/255.0, blue: 35/255.0, alpha: 100.0/100.0)
		static let nicheLightBurgundy:UIColor = UIColor(red: 134/255.0, green: 30/255.0, blue: 50/255.0, alpha: 100.0/100.0)
		static let nicheMaroon:UIColor = UIColor(red: 205/255.0, green: 53/255.0, blue: 84/255.0, alpha: 100.0/100.0)
		static let nicheMidnightBlue:UIColor = UIColor(red: 29/255.0, green: 49/255.0, blue: 75/255.0, alpha: 100.0/100.0)
		// TODO : FIXME : REMOVE : static let nicheLightGreen:UIColor = UIColor(red: 33/255.0, green: 199/137, blue: 137/255.0, alpha: 100.0/100.0)
		// TODO : FIXME : REMOVE : static let nicheDarkGreen:UIColor = UIColor(red: 40/255.0, green: 58/137, blue: 68/255.0, alpha: 100.0/100.0)
		static let nicheGrey:UIColor = UIColor(red: 230/255.0, green: 255/255.0, blue: 191/255.0, alpha: 100.0/100.0)
		static let kelleyGreen:UIColor = UIColor(red: 63/255.0, green: 180/255.0, blue: 126/255.0, alpha: 100.0/100.0)
		static let kelleyLightGreen:UIColor = UIColor(red: 83/255.0, green: 201/255.0, blue: 147/255.0, alpha: 100.0/100.0)
		static let revealLightGreen:UIColor = UIColor(red: 0.298, green: 0.851, blue: 0.3922, alpha: 1.0)
		
		static let colorZero:UIColor = UIColor(red:  68/255.0, green: 179/255.0, blue: 128/255.0, alpha: 100.0/100.0)
		static let colorRed:UIColor = UIColor(red:  148/255.0, green: 232/255.0, blue: 180/255.0, alpha: 100.0/100.0)
		static let colorPink:UIColor = UIColor(red:  183/255.0, green: 240/255.0, blue: 173/255.0, alpha: 100.0/100.0)
		static let colorPinkTwo:UIColor = UIColor(red:  218/255.0, green: 48/255.0, blue: 59/255.0, alpha: 100.0/100.0)
		static let colorFuchsia:UIColor = UIColor(red: 215/255.0, green: 51/255.0, blue: 65/255.0, alpha: 100.0/100.0)
		static let colorFuchsiaTwo:UIColor = UIColor(red: 188/255.0, green: 73/255.0, blue: 122/255.0, alpha: 100.0/100.0)
		static let colorPurple:UIColor = UIColor(red:  148/255.0, green: 232/255.0, blue: 180/255.0, alpha: 100.0/100.0)
		static let colorBlue:UIColor = UIColor(red:  68/255.0, green: 179/255.0, blue: 128/255.0, alpha: 100.0/100.0)
		// TODO : FIXME : REMOVE : static let colorGreen:UIColor = UIColor(red:  68/255.0, green: 179/255.0, blue: 128/255.0, alpha: 100.0/100.0)
		static let classyBlue:UIColor = UIColor(red: 0.40, green: 0.56, blue: 0.71, alpha: 1.00)
		static let classyGreen:UIColor = UIColor(red: 0.40, green: 0.69, blue: 0.71, alpha: 1.00)
		static let classyPurple:UIColor = UIColor(red: 0.40, green: 0.69, blue: 0.71, alpha: 1.00)
		
		//  primaryColor is the same as ==> static let colorGreen:UIColor = UIColor(red:  68/255.0, green: 179/255.0, blue: 128/255.0, alpha: 100.0/100.0)
		static let primaryColor = UIColor(red: 68/255, green: 179/255, blue: 128/255, alpha: 1)
		
		// primaryDarkColor is the same as ==> static let nicheDarkGreen:UIColor = UIColor(red: 40/255.0, green: 58/137, blue: 68/255.0, alpha: 100.0/100.0)
		static let primaryDarkColor:UIColor = UIColor(red: 40/255.0, green: 58/137, blue: 68/255.0, alpha: 100.0/100.0)
		
		// primaryLightColor is the same as ==> static let nicheLightGreen:UIColor = UIColor(red: 33/255.0, green: 199/137, blue: 137/255.0, alpha: 100.0/100.0)
		static let primaryLightColor:UIColor = UIColor(red: 33/255.0, green: 199/137, blue: 137/255.0, alpha: 100.0/100.0)
		
		static let secondaryColor = UIColor(red: 148/255, green: 232/255, blue: 180/255, alpha: 1)
	}
	

	
}
