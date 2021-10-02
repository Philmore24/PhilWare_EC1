using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PhilWare.Startup))]
namespace PhilWare
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
