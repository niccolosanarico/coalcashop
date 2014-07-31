Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form',
  :replace => 'erb[loud]:contains("bt_payment_form")',
  :text => %q{

      <%= form_for bank_transfer_payment, :html => { :class => "bt_payment_form #{bank_transfer_payment.details_submitted? ? '' : 'c_hidden'}" } do |f| %>

  }
)

Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form_7',
  :replace => 'erb[loud]:contains("Spree.t(:add_details)")',
  :text => %q{
    <%= link_to "Inserisci gli estremi del bonifico", "javascript:void(0);", :class => 'button add_bt_details' %>
  }
)

Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form_2',
  :replace => 'erb[loud]:contains("Spree.t(:deposited_on)")',
  :text => %q{
    <%= 'Inviato il' %>
  }
)

Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form_3',
  :replace => 'erb[loud]:contains("Spree.t(:bank_name)")',
  :text => %q{
    <%= 'Banca' %>
  }
)

Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form_4',
  :replace => 'erb[loud]:contains("Spree.t(:account_no)")',
  :text => %q{
    <%= 'IBAN' %>
  }
)

Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form_5',
  :replace => 'erb[loud]:contains("Spree.t(:transaction_reference_no)")',
  :text => %q{
    <%= 'Numero CRO' %>
  }
)

Deface::Override.new(
  :virtual_path => 'spree/shared/_order_details',
  :name => 'fix_bank_transfer_form_6',
  :replace => 'erb[loud]:contains("Submit")',
  :text => %q{
    <%= f.submit "Invia", :class => "btn btn-confirm", :confirm => "Sicuro di voler proseguire? Non sarai in grado di modificare i dati una volta data conferma. Premi 'OK' per confermare."  %>
  }
)
