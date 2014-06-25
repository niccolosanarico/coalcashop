Spree::BaseHelper.module_eval do
  def link_to_cart(text = nil)
    return "" if current_spree_page?(spree.cart_path)

    text = text ? h(text) : Spree.t('cart')
    css_class = nil

    if current_order.nil? or current_order.item_count.zero?
      text = "#{image_tag 'cart.jpg', size: '16x16'} #{text}: (#{Spree.t('empty')})".html_safe
      css_class = 'empty'
    else
      text = "#{image_tag('cart.png', size: '16x16')} #{text}: (#{current_order.item_count})  <span class='amount'>#{current_order.display_total.to_html}</span>".html_safe
      css_class = 'full'
    end

    link_to text, spree.cart_path, :class => "cart-info #{css_class}"
  end
end
