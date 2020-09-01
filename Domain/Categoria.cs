using System;
using System.Collections.Generic;
using System.Text;

namespace Domain
{
    public class Categoria
    {
        public int CategoriaId { get; set; }
        public string NombreCategoria { get; set; }
        public List<Marcas> Marcas{get;set;}

    }
}
