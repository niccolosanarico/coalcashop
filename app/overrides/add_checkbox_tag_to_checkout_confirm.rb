Deface::Override.new(:virtual_path => 'spree/checkout/_confirm',
                     :name => 'add_checkbox_tag_to_checkout_confirm',
                     :replace => 'div.form-buttons',
                     :text => '

<div class="text-right">
  <%= check_box_tag "accept_terms", true, false %><%= link_to("Accetto le condizioni di vendita", "#my-modal" , :class => "btn", :remote => true, data: {:toggle => "modal", :target => "#terms-modal"} ) %>
</div>

<div class="modal fade" id="terms-modal" title="Coalca Shop">
  <div class="modal-content  modal-lg" style="margin-left:auto;margin-right:auto;">
    <div class="modal-dialog">
      <div class="modal-header">
        <button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
        <h3 id="modal-title">Coalca Shop</h3>
      </div>
      <div class="modal-body" id="terms-modal">
        <%= render :partial => "layouts/terms" %>
      </div>
      <div class="modal-footer">
        <button aria-hidden="true" class="btn" data-dismiss="modal">Chiudi</button>
      </div>
    </div>
  </div>
</div>


<div class="well text-right form-buttons" data-hook="buttons">
  <%= submit_tag Spree.t(:place_order), :class => "btn btn-lg btn-success", :id => "checkout_confirm_button", :disabled => true %>
  <script>Spree.disableSaveOnClick();</script>
</div>

')
