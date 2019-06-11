using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiddleEarth.Models
{
	public class MiddleEarthPlacesModel
	{
		public List<string> Countries { get; set; }
		public List<string> Cities { get; set; }
		public List<string> Forests { get; set; }
		public List<string> Mountains { get; set; }
		public List<string> Mines { get; set; }
	}
}