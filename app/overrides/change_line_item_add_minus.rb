Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => 'change_line_item_add_minus',
                     :replace => 'td.cart-item-delete',
                     :text => %q(
                       <td class="cart-item-delete" data-hook="cart_item_delete">
                         <%= link_to content_tag(:span, '', class: 'fa fa-minus-circle fa-2x'), '#', class: 'delete', id: "delete_#{dom_id(line_item)}" %>
                      </td>
                      ))
