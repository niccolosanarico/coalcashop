Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'change_content_size',
                     :replace => 'div#content',
                     :text => %q(
                      <div id="content" class="<%= !content_for?(:sidebar) ? "col-sm-12" : "col-sm-9 col-md-10" %>" data-hook>
                        <%= flash_messages %>
                        <%= yield %>
                      </div>
                     ))
