Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
                     :name => 'add_menu_items_to_main_menu',
                     :replace_contents => 'nav',
                     :text => "
                                <div id='main-nav-bar' class='navbar-collapse'>
                                    <ul class='nav navbar-nav' data-hook>
                                        <li id='home-link' data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
                                        <li id='about-link' data-hook><a href='#'>Chi siamo</a></li>
                                        <li id='catalogue-link' class='dropdown' data-hook>
                                            <a href='#' class='dropdown-toggle' data-toggle='dropdown'>Catalogo  <b class='caret'></b></a>
                                            <ul class='dropdown-menu'>
                                                <li><a href='#'>Cucine</a></li>
                                                <li><a href='#'>Pizzerie</a></li>
                                            </ul>
                                        </li>
                                        <li id='terms-link' data-hook><a href='#'>Condizioni</a></li>
                                        <li id='contacts-link' data-hook><a href='#'>Contatti</a></li>
                                    </ul>
                                    <ul class='nav navbar-nav navbar-right' data-hook>
                                        <li id='link-to-cart' data-hook><%= link_to_cart %></li>
                                    </ul>
                                </div>
")
