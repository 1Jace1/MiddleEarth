using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiddleEarth.Models;

namespace MiddleEarth.Controllers
{
	public class PopUpController : Controller
	{
		[ChildActionOnly]
		public PartialViewResult ShortInformationPopUp()
		{
			ShortInformationPopUpModel model = new ShortInformationPopUpModel();
			model.City = "Ghondor";
			return PartialView(model);
		}
	}
}