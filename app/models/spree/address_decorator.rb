Spree::Address.class_eval do
  validates :partita_iva, :presence => true
  validates :company, :presence => true

  def require_partita_iva?
      true
  end

  def require_company?
      true
  end
end
