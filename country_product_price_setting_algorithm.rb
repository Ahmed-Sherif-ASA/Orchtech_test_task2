def Calc_Price(country_price_index, product_packing_and_container_cost, product_brand_rating)
  if product_brand_rating == "fragile"
  var = 1.1
  elsif product_brand_rating == "robust"
    var =  0.9
  else
    var = 1
  end

  x = 0.75
  rates = [15,25,50,75,100,200,400,600]
  rates.each_with_index do |item, index|  
    if country_price_index < item
      x = x + (0.025*(index))
      break
    end
  end 

  return price = (country_price_index - product_packing_and_container_cost * x) * var
end

original_price = Calc_Price(14, 9, "fragile")
p original_price