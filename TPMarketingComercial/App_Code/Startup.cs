using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TPMarketingComercial.Startup))]
namespace TPMarketingComercial
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
