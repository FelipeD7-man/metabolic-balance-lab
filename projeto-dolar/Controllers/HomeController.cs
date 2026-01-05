
using Microsoft.AspNetCore.Mvc;
namespace projeto_dolar.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index() => View();
        public IActionResult HowItWorks() => View();
        public IActionResult Disclaimer() => View();
    }
}
