Deface::Override.new(:virtual_path => 'spree/shared/_sidebar',
                     :name => 'change_sidebar_size',
                     :replace => 'aside',
                     :text => %q(
                      <aside id="sidebar" class="col-sm-3 col-md-2" data-hook>
                        <%= yield :sidebar %>
                      </aside>
                     ))
