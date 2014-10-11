class OrderReserve < ActionMailer::Base
  default from: "from@example.com"

  def order_reserved(order)
    # @user = User
    # @order = Order
    mail(to: [order.user.email, 'garret@email.com'], subject: "Order has been received")
  end
end
