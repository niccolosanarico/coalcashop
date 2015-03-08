require_dependency 'spree/shipping_calculator'

module Spree
  module Calculator::Shipping
    class SdaExtraLarge < ShippingCalculator

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
        when 0...50
          15
        when 50...10000
          15+(weight-50)*0.35
        end
      end
    end
  end
end
