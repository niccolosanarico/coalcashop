require_dependency 'spree/shipping_calculator'

module Spree
  module Calculator::Shipping
    class Sda2 < ShippingCalculator

      def self.description
        "Tariffa SDA Extra-large"
      end

      def compute_package(package)
        compute_from_weight(package.weight)#contents.sum(&:quantity))
      end

      def compute_from_weight(weight)
        #self.preferred_costo * ( (weight / preferred_colli).floor + 1)
        #puts weight

        case weight
        when 0...25
          25
        when 25...1000000
          25+(weight)*0.50
        end
      end
    end
  end
end
