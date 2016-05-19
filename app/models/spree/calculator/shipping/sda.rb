require_dependency 'spree/shipping_calculator'

module Spree
  module Calculator::Shipping
    class Sda < ShippingCalculator

      def self.description
        "Tariffa SDA"
      end

      def compute_package(package)
        compute_from_weight(package.weight, package.volume)#contents.sum(&:quantity))
      end

      def compute_from_weight(weight, volume)
        #self.preferred_costo * ( (weight / preferred_colli).floor + 1)
        #puts weight
        weight = weight + volume/3.333

        case weight
        when 0...3
          10
        when 3...15
          13
        when 15...1000000
          15+(weight-15)*0.35
        end
      end
    end
  end
end
