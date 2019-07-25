using System.Web.Mvc;

namespace MiddleEarth.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult MiddleEarth()
		{
			return View();
		}

		public ActionResult Impressum()
		{
			string xmlImp = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/Impressum.xml"));
			ViewBag.DataImp = xmlImp;

			return View();
		}
	}
}