using System;
using System.Collections.Generic;
using System.Text;

namespace Domain
{
    public class Producto
    {
        public int ProductoId{get;set;}
        public string NombreProducto{get;set;}
        public List<Category> Categorias{get;set;}
        public Marca MarcaProducto{get;set;}
    }
}
