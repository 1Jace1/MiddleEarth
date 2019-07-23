using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiddleEarth.Models
{
	public class CountireInformationModel
	{
		public string Information { get; set; }
		public List<CitiesInformations> City { get; set; }
		public string Rivers { get; set; }
		public string Mountains { get; set; }
		public string Forests { get; set; }
		public string Fortress { get; set; }
		public string Special { get; set; }
	}

	public class CitiesInformations
	{
		public string Name { get; set; }
		public string Info { get; set; }
	}

	public class CountiresModel
	{
		public List<CountireInformationModel> ListOfCountires { get; set; }
	}
}