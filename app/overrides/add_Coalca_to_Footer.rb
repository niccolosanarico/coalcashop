Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                     :name => 'add_Coalca_to_Footer',
                     :replace => 'div#footer-left',
                     :text => '
                         <div id="footer-left" class="col-md-10" data-hook>
                           <p><a href="#">Coalca Shop</a> by <a href="http://www.coalca.it">Coalca s.r.l.</a> <span class="coalca-info">- p.IVA 00727120156 - cap. soc. &euro; 100.000,00 iv</span></p>
                         </div>
                    ')
