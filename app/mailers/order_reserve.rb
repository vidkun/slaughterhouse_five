class OrderReserve < ActionMailer::Base
  default from: "from@example.com"

  def order_reserve(user)
    @user = User
    @order = Order
    mail(to: user.email, to: 'garret@email.com', subject: "Order has been received")
  end
end
