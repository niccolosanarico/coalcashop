Spree::CheckoutController.class_eval do
  # Updates the order and advances to the next state (when possible.)

    def update
      if @order.update_from_params(params, permitted_checkout_attributes, request.headers.env)
        @order.temporary_address = !params[:save_user_address]
        unless @order.next
          flash[:error] = @order.errors.full_messages.join("\n")
          redirect_to checkout_state_path(@order.state) and return
        end

        if @order.completed?

          @current_order = nil
          flash.notice = "Il tuo ordine e' stato completato con successo, tra poco riceverai una email con tutti i dettagli. Grazie per l'acquisto!"
          flash['order_completed'] = true
          redirect_to completion_route
        else
          redirect_to checkout_state_path(@order.state)
        end
      else
        render :edit
      end
    end

end
