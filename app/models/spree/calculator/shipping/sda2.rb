require_dependency 'spree/shipping_calculator'

module Spree
  module Calculator::Shipping
    class Sda2 < ShippingCalculator

      def self.description
        "Tariffa SDA Extra-large"
      end

      def compute_package(package)
        compute_from_weight(package.weight, package.volume / (100*100*100))#contents.sum(&:quantity))
      end

      def compute_from_weight(weight, volume)
        # SDA: https://www.sda.it/SITO_SDA-HTML-WEB/soluzioni/frm_peso_vol.htm
        weight = weight + volume*300/3.333

        case weight
        when 0...50
          20
        when 50..1000000
          20+(weight*0.35).round(-1) #round to closest round tens
        end
      end
    end
  end
end
