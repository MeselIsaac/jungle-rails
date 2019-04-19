class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  
  def order_placed(order, cart)
    @order = order
    @cart = cart
    mail(to: @order.email, subject: "Order ID number #{@order.id} was placed successfully")
  end
end
