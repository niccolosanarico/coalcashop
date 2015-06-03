Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => 'modify_header',
                     :insert_after => 'erb[loud]:contains("javascript_include_tag")',
                     :partial => 'shared/coalca_header')
