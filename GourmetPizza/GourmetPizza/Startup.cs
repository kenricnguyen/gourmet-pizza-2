using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GourmetPizza.Startup))]
namespace GourmetPizza
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
