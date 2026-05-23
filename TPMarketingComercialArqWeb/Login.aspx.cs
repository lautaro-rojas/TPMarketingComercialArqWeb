using BE;
using BE.BITACORAYCAMBIOS;
using BE.PERMISOS;
using BE.SESION;
using BLL;
using BLL.BITACORAYCAMBIOS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPMarketingComercialArqWeb
{
    public partial class Login : System.Web.UI.Page
    {
        BLL_SESION bllsesion = new BLL_SESION();
        BLL_BITACORA_EVENTOS bllbitacoraeventos = new BLL_BITACORA_EVENTOS();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblError.Visible = false;

                if (BE_SESION.ObtenerInstancia.Logueado())
                {
                    lblError.Visible = true;
                    lblError.Text = $"Ya hay una sesión activa. Debe cerrar sesión antes de ingresar.";
                    btnLogin.Enabled = false;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (BE_SESION.ObtenerInstancia.Logueado())
            {
                lblError.Visible = true;
                lblError.Text = "Ya hay una sesión activa. Debe cerrar sesión antes de ingresar.";
                return;
            }

            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;

            try
            {
                if (bllsesion.LogIn(username, password) == BE_LOGIN_RESULTADO_ENUM.LogInCorrecto)
                {
                    var usuario = BE_SESION.ObtenerInstancia.Usuario;
                    var roles = usuario.ListaDePermisos
                                       .OfType<BE_ROL>()
                                       .Select(r => r.Nombre)
                                       .ToList();
                    string rolTexto = roles.Any() ? string.Join(", ", roles) : "Sin rol";
                    string mensaje = $"Usuario {usuario.Nombre} ingresado en el sistema con el rol: {rolTexto}";
                    string script = $"alert('{mensaje}'); window.location.href = '/';";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alertaExito", script, true);
                    bllbitacoraeventos.GuardarBitacoraEvento(new BE_BITACORA_EVENTOS(
                        BE_SESION.ObtenerInstancia.Usuario, DateTime.Now, "Log In"));
                }
            }
            catch (BE_LOGIN_EXCEPCION ex)
            {
                lblError.Visible = true;
                switch (ex.Resultado)
                {
                    case BE_LOGIN_RESULTADO_ENUM.NombreDeUsuarioIncorrecto:
                        lblError.Text = "Usuario incorrecto.";
                        break;
                    case BE_LOGIN_RESULTADO_ENUM.ContraseniaIncorrecta:
                        lblError.Text = "Contraseña incorrecta.";
                        break;
                }
            }
            catch (Exception ex)
            {
                // Cubre "Ya hay un usuario logueado" y cualquier otro error inesperado
                lblError.Visible = true;
                lblError.Text = ex.Message;
            }
        }
    }
}