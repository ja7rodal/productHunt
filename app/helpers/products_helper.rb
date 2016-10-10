module ProductsHelper
  def form_title
    @product.new_record? ? "Publicar Prducto" : "Modificar Producto"
  end
end
