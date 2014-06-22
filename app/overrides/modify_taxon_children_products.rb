Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'modify_taxon_title',
                     :replace => 'h1',
                     :text => '<h2 class="taxon-title"><%= @taxon.name %></h2>')

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'remove_taxon_children',
                     :remove => 'div[data-hook="taxon_children"]')

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'insert_taxon_products',
                     :insert_before => 'div[data-hook="taxon_products"]',
                     :text => '<% unless params[:keywords].present? %>
                                 <div data-hook="taxon_children">
                                  <% cache [I18n.locale, @taxon] do %>
                                    <%= render :partial => "taxon", :collection => @taxon.children %>
                                  <% end %>
                                  </div>
                              <% end %>')

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'add_category_children_products',
                     :insert_top => 'div[data-hook="taxon_children"]',
                     :text => '
                       <% if !@taxon.children.empty? %>
                         <h5 class="taxon_subtitle">In questa categoria trovi anche:</h4>
                       <% end %>')
