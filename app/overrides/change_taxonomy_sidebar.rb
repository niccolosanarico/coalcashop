Deface::Override.new(:virtual_path => 'spree/shared/_taxonomies',
                     :name => 'change_taxonomy_header',
                     :insert_top => 'nav#taxonomies',
                     :original => '020e93cbf5e0b6dad3a8094de775547a0489d55d',
                     :text => '<h4>Esplora il catalogo</h4>')

Deface::Override.new(:virtual_path => 'spree/shared/_taxonomies',
                     :name => 'change_taxonomy_header_2',
                     :replace => 'h4.taxonomy-root',
                     :original => '3e28b6041604670e11c9739a0badfd2a91452a44',
                     :text => '<div class="taxonomy-root"><strong><%= taxonomy.name %></strong></div>')
