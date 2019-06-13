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
			MiddleEarthPlacesModel model = new MiddleEarthPlacesModel();
			XMLReaderHelper helper = new XMLReaderHelper();
			
			//path und nodes vllt korrigieren in der methode vom reader
			//model.Cities = helper.XMLReader("", new List<string>());

			return View(model);
		}

		public ActionResult MiddleEarth()
		{
			return View();
		}
	}
}