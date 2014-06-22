fill_color "E99323"
if @hide_prices
  text Spree.t(:packaging_slip), :align => :right, :style => :bold, :size => 18
else
  text "Fattura", :align => :right, :style => :bold, :size => 18
end
fill_color "000000"
