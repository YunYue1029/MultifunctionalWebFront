using Microsoft.AspNetCore.Mvc;

namespace MyWebApp.Controllers
{
    public class ExpensesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}