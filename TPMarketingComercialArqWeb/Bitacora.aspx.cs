using BE;
using BE.BITACORAYCAMBIOS;
using BE.PERMISOS;
using BLL;
using BLL.BITACORAYCAMBIOS;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace TPMarketingComercialArqWeb
{
    public partial class Bitacora : PaginaProtegida
    {
        protected override BE_PERMISO_TIPO_ENUM PermisoRequerido
            => BE_PERMISO_TIPO_ENUM.GestionarBitacoraEventos;

        BLL_BITACORA_EVENTOS bllbitacoraeventos = new BLL_BITACORA_EVENTOS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bllbitacoraeventos.GuardarBitacoraEvento(
                    new BE_BITACORA_EVENTOS(BE_SESION.ObtenerInstancia.Usuario, DateTime.Now, "Abrió Bitacora"));
                LlenarGrilla();
            }
        }

        protected void Page_Close(object sender, EventArgs e)
        {
            bllbitacoraeventos.GuardarBitacoraEvento(new BE_BITACORA_EVENTOS(BE_SESION.ObtenerInstancia.Usuario, DateTime.Now, $"Cerró Bitacora"));
        }

        private void LlenarGrilla()
        {
            var data = bllbitacoraeventos.ListarBitacoraEvento()
                        .OrderByDescending(b => b.Fecha)
                        .ToList();
            gvBitacora.DataSource = data;
            gvBitacora.DataBind();
        }

        protected void gvBitacora_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBitacora.PageIndex = e.NewPageIndex;
            LlenarGrilla();
        }

        protected void gvBitacora_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}