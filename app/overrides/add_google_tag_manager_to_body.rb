Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_google_tag_manager_to_body',
                     :insert_top => 'body',
                     :original => 'd3bacab5d2ef18d522d121671861f4182719eb96',
                     :text => '
                       <!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PLBQC4"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({"gtm.start":
new Date().getTime(),event:"gtm.js"});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!="dataLayer"?"&l="+l:"";j.async=true;j.src=
"//www.googletagmanager.com/gtm.js?id="+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,"script","dataLayer","GTM-PLBQC4");</script>
<!-- End Google Tag Manager -->
                    ')
