using MiddleEarth.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiddleEarth.Data.Helper;

namespace MiddleEarth.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			string xml = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/TestFile.xml"));
			ViewBag.Data = xml;

			return View();
		}

		public ActionResult MiddleEarth()
		{
			return View();
		}
	}
}