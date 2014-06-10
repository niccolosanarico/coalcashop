Deface::Override.new(:virtual_path => 'spree/shared/_taxonomies',
                     :name => 'change_taxonomy_header',
                     :insert_top => 'nav#taxonomies',
                     :text => '<h4>Esplora il catalogo</h4>')

Deface::Override.new(:virtual_path => 'spree/shared/_taxonomies',
                     :name => 'change_taxonomy_header_2',
                     :replace => 'h4.taxonomy-root',
                     :text => '<div class="taxonomy-root"><%= taxonomy.name %></div>')
