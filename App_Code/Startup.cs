using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OfficeInvent3.Startup))]
namespace OfficeInvent3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
