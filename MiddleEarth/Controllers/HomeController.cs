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