module ApplicationHelper
  def pluralize(quantity, unity, product_name)
    case unity

    when "L", "Kg"
      if product_name == "Huile"
        "#{quantity} #{unity} d'#{product_name.downcase}"
      else
        "#{quantity} #{unity} de #{product_name.downcase}"
      end

    when ""
      if quantity == 1
        "#{quantity} #{product_name}"
      else
        "#{quantity} #{product_name}s"
      end

    when "Pack"
      if quantity == 1
        if product_name == "Eau"
          "#{quantity} #{unity} d'#{product_name.downcase}"
        else
          "#{quantity} #{unity} de #{product_name.downcase}"
        end
      else
        if product_name == "Eau"
          "#{quantity} #{unity}s d'#{product_name.downcase}"
        else
          "#{quantity} #{unity}s de #{product_name.downcase}"
        end
      end


    when "Boîte", "Paquet", "Sachet"
      if quantity == 1
        if product_name == "Oeufs"
          "#{quantity} #{unity} d'#{product_name.downcase}"
        else
          "#{quantity} #{unity} de #{product_name.downcase}"
        end
      else
        if product_name == "Oeufs"
          "#{quantity} #{unity}s d'#{product_name.downcase}"
        else
          "#{quantity} #{unity}s de #{product_name.downcase}"
        end
      end

    end

  end
end
