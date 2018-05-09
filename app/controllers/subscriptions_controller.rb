class SubscriptionsController < ApplicationController
  def create
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: 10000,
      description: 'My news service subscription',
      currency: 'sek'
    )

    if charge.paid? 
      current_user.update_attribute(:subscriber, true)
      flash_message = 'Welcome as a subscriber!'
    else
      flash_message = 'That did not work....'
    end
    redirect_to root_path, notice: flash_message
  end

  def new
  end
end
