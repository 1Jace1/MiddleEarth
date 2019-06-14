using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace MiddleEarth.Data.Helper
{
	public class XMLReviewWriter
	{
		private readonly string _review = "review";
		private readonly string _user = "user";
		private readonly string _comment = "comment";
		private readonly string _starRating = "star_rating_number";
		private readonly string _date = "date";

		public void WriteToXml(string path, string user, string text, int stars, DateTime date)
		{
			XDocument doc = XDocument.Load(path);
			string dateInString = DateToString(date);
			XElement review = doc.Element("reviews");
			review.Add(new XElement(_review,
				new XElement(_user, user),
				new XElement(_comment, text),
				new XElement(_starRating, stars),
				new XElement(_date, dateInString)));

			doc.Save(path);
			
		}

		private string DateToString(DateTime date)
		{
			return String.Format("{0:G}", date);
		}
	}
}
