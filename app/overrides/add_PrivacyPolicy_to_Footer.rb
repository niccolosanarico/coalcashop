Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                     :name => 'add_PrivacyPolicy_to_Footer',
                     :replace => 'div#footer-right',
                     :text => '
                       <div id="footer-right" class="col-md-2" data-hook>
                          <a href="//www.iubenda.com/privacy-policy/983640" class="iubenda-white iubenda-embed" title="Privacy Policy">
                          Privacy Policy</a>
                          <script type="text/javascript">
                            (function (w,d) {var loader = function () {var s = d.createElement("script"), tag = d.getElementsByTagName("script")[0];
                            s.src = "//cdn.iubenda.com/iubenda.js"; tag.parentNode.insertBefore(s,tag);};
                            if(w.addEventListener){w.addEventListener("load", loader, false);}else if(w.attachEvent){w.attachEvent("onload", loader);}else{w.onload = loader;}})(window, document);
                          </script>
                        </div>
                    ')
