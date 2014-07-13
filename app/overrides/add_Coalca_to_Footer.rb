Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                     :name => 'add_Coalca_to_Footer',
                     :replace => 'div#footer-left',
                     :original => 'c9c7632fc6b4988a05580debd423b9a37286bd57',
                     :text => '
                         <div id="footer-left" class="col-md-10" data-hook>
                           <p><a href="#">Coalca Shop</a> by <a href="http://www.coalca.it">Coalca s.r.l.</a> <span class="coalca-info">- p.IVA 00727120156 - cap. soc. &euro; 100.000,00 iv</span></p>
                         </div>
                    ')

Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                     :name => 'add_JS_Trick_For_Footer_to_Footer',
                     :insert_after => 'div#spree-footer',
                     :original => '57f1997c2706a3f30412d2ee0d48ebac404b270f',
                     :text => '<script type="text/javascript">
                         $(document).ready(function() {

                            var docHeight = $(window).height();
                            var footerHeight = $("#spree-footer").height();
                            var footerTop = $("#spree-footer").position().top + footerHeight;

                            if (footerTop < docHeight) {
                             $("#spree-footer").css("margin-top", 0+(docHeight - footerTop) + "px");
                            }

                         });
                         </script>

                    ')
