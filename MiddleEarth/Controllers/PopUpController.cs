using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiddleEarth.Models;
using MiddleEarth.Data.Helper;

namespace MiddleEarth.Controllers
{
	public class PopUpController : Controller
	{

		[ChildActionOnly]
		public PartialViewResult ShortInformationPopUp()
		{
			string region = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/regions.xml"));
			string cities = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/cities.xml"));
			string forrests = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/forrest.xml"));
			string mounatains = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/mountains.xml"));
			string fortresses = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/fortress.xml"));
			string seas = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/seas.xml"));
			string territories = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/territories.xml"));
			ViewBag.RegionData = region;
			ViewBag.CitiesData = cities;
			ViewBag.ForrestData = forrests;
			ViewBag.MountainsData = mounatains;
			ViewBag.FortressesData = fortresses;
			ViewBag.SeasData = seas;
			ViewBag.Territories = territories;

			return PartialView();
		}
	}
}