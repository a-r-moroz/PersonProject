//
//  UsersTableScreenDelegate.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

protocol UsersTableScreenDelegate: AnyObject {
//    func didTapCancelOrderButton(orderId: ID<OrderModel>)
//    func didTapRepeatOrderButton(orderId: ID<OrderModel>)
    func didSelectOrderedItemCell(userModel: User)
//    func didTapWriteReviewButton(goodsModel: GoodsModel)
//    func didTapAddItemToCartButton(goodsModel: GoodsModel)
}
