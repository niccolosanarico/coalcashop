Spree::Order.class_eval do

  def approved_by(user)
    self.transaction do
      approve!
      self.update_columns(
        approver_id: user.id,
        approved_at: Time.now,
        considered_risky: false,
      )

      deliver_order_approval_email

    end
  end

  def deliver_order_approval_email
      Spree::OrderMailer.approve_email(self.id).deliver
  end

end
