Deface::Override.new(:virtual_path => 'spree/taxons/_taxon',
                     :name => 'remove_taxon_children_products',
                     :remove => 'erb[loud]:contains("spree/shared/products")')

Deface::Override.new(:virtual_path => 'spree/taxons/_taxon',
                     :name => 'modify_link_to_taxon_children_category',
                     :replace => 'div.taxon',
                     :text => %q(
                         <div  class="col-md-3 col-sm-4 col-xs-6 taxon" data-hook="taxon">
                           <h5 class="subtaxon-title">
                            <div>
                              <%= link_to taxon.name, seo_url(taxon), class: 'list-group-item' %>
                            </div>
                           </h5>
                        </div>
                     ))
