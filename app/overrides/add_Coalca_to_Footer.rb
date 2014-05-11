Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                     :name => 'add_Coalca_to_Footer',
                     :replace => 'div#footer-left',
                     :text => '
                         <div id="footer-left" class="col-md-10" data-hook>
                           <p><a href="#">Coalca Shop</a> by <a href="http://www.coalca.it">Coalca s.r.l.</a> <span class="coalca-info">- p.IVA 00727120156 mecc. mi206389 - r.e.a. 662765 iscr.trib. mi - reg. soc. 122458 vol. 3148 - fasc.8 - cap. soc. &euro; 100.000,00 int. vers.</span></p>
                         </div>
                    ')
