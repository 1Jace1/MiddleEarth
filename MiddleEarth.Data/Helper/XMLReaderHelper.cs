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
		//TODO: List of T? & fix the bug

		public List<T> XMLReader<T>(string path)
		{
			List<T> xmlNodes = new List<T>();
			Dictionary<T, T> result = new Dictionary<T, T>();

			if (!String.IsNullOrEmpty(path))
			{
				XmlDocument doc = new XmlDocument();
				doc.Load(path);
				
				foreach (XmlNode item in doc.DocumentElement.ChildNodes)
				{
					XmlNode currentNode = doc.DocumentElement.SelectSingleNode("review");
					XmlNodeList bla = currentNode.ChildNodes;
					
					foreach(XmlNode nodeItem in bla)
					{
						T convertNodeItemInnerText = (T)Convert.ChangeType(nodeItem.InnerText, typeof(T));
						T convertNodeItemName = (T)Convert.ChangeType(nodeItem.Name, typeof(T));
						result.Add(convertNodeItemName, convertNodeItemInnerText);
					}

					T text = (T)Convert.ChangeType(currentNode.InnerText, typeof(T));
					xmlNodes.Add(text);
				}

				return xmlNodes.OrderBy(x => x).ToList();
			}

			return new List<T>();
		}

		public List<KeyValuePair<T,T>> XmlReviewReader<T>(string path, string rootNode)
		{
			if (!String.IsNullOrEmpty(path))
			{
				List<KeyValuePair<T, T>> data = new List<KeyValuePair<T, T>>();
				XmlDocument doc = new XmlDocument();
				doc.Load(path);
				XmlNodeList nodes = doc.DocumentElement.SelectNodes(rootNode);

				foreach(XmlNode node in nodes)
				{
					XmlNodeList childeNoteList = node.ChildNodes;
					foreach(XmlNode nodeItem in childeNoteList)
					{
						T convertNodeItemInnerText = (T)Convert.ChangeType(nodeItem.InnerText, typeof(T));
						T convertNodeItemName = (T)Convert.ChangeType(nodeItem.Name, typeof(T));
						KeyValuePair<T, T> element = new KeyValuePair<T, T>(convertNodeItemName, convertNodeItemInnerText);
						data.Add(element);
						
					}
					
				}

				return data;
			}
			else
			{
				return new List<KeyValuePair<T, T>>();
			}
		}
	}
}