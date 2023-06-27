using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Panaderia_DonDonas.Models
{
    public class Order
    {
        public int IdOrder { get; set; }
        public string Name { get; set; }
        public string Address  { get; set; }
        public int Number { get; set; }
        public string DonutFlavor { get; set; }

        public int EDonutFlavor { get; set; }  
        
        //public EDonutFlavor EDonutFlavor { get; set; }  
    }

    //public enum EDonutFlavor 
    //{
    //    Glaseada_Original = 1,
    //    Carlos_V_Blanco,
    //    Crunch,
    //    Larin_Almendra,
    //    Carlos_V,
    //    Hello_Kitty,
    //    Original_de_Fresa,
    //    Brownie,
    //    Shell_Manzana_Canela,
    //    Relleno_de_Cajeta,
    //    Crema_Pastelera,
    //    Moka,
    //}
}