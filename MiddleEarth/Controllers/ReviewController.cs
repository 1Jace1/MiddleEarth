﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MiddleEarth.Data.Helper;
using MiddleEarth.Models;

namespace MiddleEarth.Controllers
{
	public class ReviewController : Controller
	{
		private readonly string reviewRootNode = "review";

		public PartialViewResult Reviews()
		{
			ReviewsModel model = new ReviewsModel();
			model = LoadReviews();

			return PartialView(model);
		}

		#region private helper methods

		private ReviewsModel LoadReviews()
		{
			ReviewsModel model = new ReviewsModel();
			model.ListOfReviews = new List<ReviewModel>();
			XMLReaderHelper readerHelper = new XMLReaderHelper();
			List<KeyValuePair<string, string>> xmlData = new List<KeyValuePair<string, string>>();
			xmlData = readerHelper.XmlReviewReader<string>(Server.MapPath("~/Content/XmlFiles/Review.xml"), reviewRootNode);
			ReviewModel item = new ReviewModel();

			foreach (var data in xmlData)
			{
				switch (data.Key)
				{
					case "user":
						item.User = data.Value;
						break;
					case "comment":
						item.Comment = data.Value;
						break;
					case "star_rating_number":
						Int32.TryParse(data.Value, out int parsedValue);
						item.StarRatingNumber = parsedValue;
						break;
					case "date":
						DateTime.TryParse(data.Value, out DateTime parsedDate);
						item.TimeAndDateOnPublish = parsedDate;
						model.ListOfReviews.Add(item);
						item = new ReviewModel();
						break;
				}
			}

			return model;
		}

		#endregion

		public PartialViewResult WriteReviewsToXml()
		{


			return PartialView("Reviews");
		}
	}
}