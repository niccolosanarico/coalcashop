Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'modify_taxon_title',
                     :replace => 'h1',
                     :text => '<h2 class="taxon-title"><%= @taxon.name %></h2>')

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'modify_filter_show',
                     :replace => 'erb[loud]:contains("spree/shared/filters")',
                     :text => %q(<%= render partial: 'spree/shared/filters' %>))

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'remove_taxon_children',
                     :remove => 'div[data-hook="taxon_children"]')

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'add_bootstrap_to_taxon_section',
                     :replace => 'div[data-hook="taxon_products"]',
                     :text => %q(
                      <div data-hook="taxon_products" class="col-sm-12 col-xs-12">
                        <%= render partial: 'spree/shared/products', locals: { products: @products, taxon: @taxon } %>
                      </div>
                     ))

Deface::Override.new(:virtual_path => 'spree/taxons/show',
                     :name => 'insert_taxon_products',
                     :insert_before => 'div[data-hook="taxon_products"]',
                     :text => '<% unless params[:keywords].present? or not @taxon.children.present? %>
                                 <div data-hook="taxon_children" class="col-md-12 col-sm-12 subtaxon-section">
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
                         <div class="col-md-12 col-sm-12 col-xs-12"><h5 class="taxon_subtitle">In questa categoria trovi anche:</h5></div>
                       <% end %>')
