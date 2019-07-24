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
			string xml = System.IO.File.ReadAllText(Server.MapPath("~/Content/XmlFiles/regions.xml"));
			ViewBag.RegionData = xml;

			return PartialView();
		}
	}
}