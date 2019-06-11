using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace MiddleEarth.Data.Helper
{
	public class XMLReaderHelper
	{
		//TODO: List of T?

		public List<string> XMLReader(string path, List<string> nodes)
		{
			List<string> xmlNodes = new List<string>();

			if (!String.IsNullOrEmpty(path))
			{
				XmlDocument doc = new XmlDocument();
				doc.Load(path);

				foreach (string node in nodes)
				{
					XmlNode currentNode = doc.DocumentElement.SelectSingleNode(node);
					string text = currentNode.InnerText;
					xmlNodes.Add(text);
				}

				return xmlNodes.OrderBy(x => x).ToList();
			}

			return new List<string>();
		}
	}
}