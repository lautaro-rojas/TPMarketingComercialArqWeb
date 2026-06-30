using BE;
using BLL;
using BLL.DIGITOVERIFICADOR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPMarketingComercialArqWeb
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            BLL_PRODUCTO p = new BLL_PRODUCTO();
            BLL_DIGITOVERIFICADOR d = new BLL_DIGITOVERIFICADOR();

            List<BE_PRODUCTO> a = p.ListarProductos();

            foreach (BE_PRODUCTO b in a)
            {
                d.CalcularDVHTabla("PRODUCTO");
                d.CalcularDVHTabla("INSUMO");
                d.CalcularDVHTabla("PIEZAIMPRESA");
            }

            d.CalcularDVVTabla("PRODUCTO");
            d.CalcularDVVTabla("INSUMO");
            d.CalcularDVVTabla("PIEZAIMPRESA");
            */
        }
    }
}
