module Spree
  module BaseHelper
    def link_to_cart(text = nil)
      # return "" if current_spree_page?(spree.cart_path)
      #
      # text = text ? h(text) : Spree.t('cart')
      # css_class = nil
      #
      # if current_order.nil? or current_order.item_count.zero?
      #   text = "#{image_tag 'cart.jpg', size: '16x16'} #{text}: (#{Spree.t('empty')})".html_safe
      #   css_class = 'empty'
      # else
      #   text = "#{image_tag('cart.jpg', size: '16x16')} #{text}: (#{current_order.item_count})  <span class='amount'>#{current_order.display_total.to_html}</span>".html_safe
      #   css_class = 'full'
      # end
      #
      # link_to text, spree.cart_path, :class => "cart-info #{css_class}"

      text = text ? h(text) : Spree.t('cart')
        css_class = nil

        if simple_current_order.nil? or simple_current_order.item_count.zero?
          # text = "<span class='glyphicon glyphicon-shopping-cart'></span> #{text}: (#{Spree.t('empty')})"
          text = "<i class='fa fa-shopping-cart' aria-hidden='true'></i> #{text}: (#{Spree.t('empty')})"
          css_class = 'empty'
        else
          # text = "<span class='glyphicon glyphicon-shopping-cart'></span> #{text}: (#{simple_current_order.item_count})  <span class='amount'>#{simple_current_order.display_total.to_html}</span>"
          text = "<i class='fa fa-shopping-cart' aria-hidden='true'></i> #{text}: (#{simple_current_order.item_count})  <span class='amount'>#{simple_current_order.display_total.to_html}</span>"
          css_class = 'full'
        end

        link_to text.html_safe, spree.cart_path, :class => "cart-info #{css_class}"
    end

    def taxons_tree(root_taxon, current_taxon, max_level = 1)

      return '' if max_level < 1 || root_taxon.leaf?
      content_tag :div, class: 'list-group' do
        taxons = root_taxon.children.map do |taxon|
          css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'list-group-item active' : 'list-group-item'
          logger.info "#{taxon.name} - #{css_class}"
          # css_class = (current_taxon.name == taxon.name) ? 'list-group-item' : 'list-group-item'
          link_to(taxon.name, seo_url(taxon), class: css_class) + taxons_tree(taxon, current_taxon, max_level - 1)
        end
        safe_join(taxons, "\n")
      end
    end

    
  end
end
