class Weight
  AVG_GIRAFFE_IN_KG = 1200.0

  def self.convert_to_giraffes(kilograms)
    kilograms / AVG_GIRAFFE_IN_KG
  end
end