require_dependency 'spree/shipping_calculator'

module Spree
  module Calculator::Shipping
    class Sda < ShippingCalculator
      preference :costo, :decimal, default: 0
      preference :colli, :integer, default: 6

      def self.description
        "Tariffa SDA"
      end

      def compute_package(package)
        compute_from_weight(package.weight)#contents.sum(&:quantity))
      end

      def compute_from_weight(weight)
        #self.preferred_costo * ( (weight / preferred_colli).floor + 1)
        puts weight
        
        case weight
        when 0...3
          10
        when 3...15
          13
        when 15...30
          15
        end
      end
    end
  end
end
