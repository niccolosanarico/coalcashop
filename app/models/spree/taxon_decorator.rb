Spree::Taxon.class_eval do
  def applicable_filters
      fs = []
      fs << Spree::Core::ProductFilters.taxons_below(self) unless self.root?
      ## unless it's a root taxon? left open for demo purposes

      fs << Spree::Core::ProductFilters.simple_scopes if Spree::Core::ProductFilters.respond_to?(:simple_scopes)
      #fs << Spree::Core::ProductFilters.taxons_below  if Spree::Core::ProductFilters.respond_to?(:taxons_below)
      fs
    end
end
