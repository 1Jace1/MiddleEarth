using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace MiddleEarth.Data.Helper
{
	public class XMLReviewWriter
	{
		private readonly string path = "";

		public void WriteToXml(string text)
		{
			XmlDocument doc = new XmlDocument();
			doc.Load(path);

			XmlElement element = doc.CreateElement("Comment");
			element.InnerText = text;
			doc.DocumentElement.AppendChild(element);
			doc.Save(path);
		}
	}
}
