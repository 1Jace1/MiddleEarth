using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiddleEarth.Models
{
	public class ReviewModel
	{
		public string User { get; set; }
		public string Comment { get; set; }
		public int StarRatingNumber { get; set; }
		public DateTime TimeAndDateOnPublish { get; set; }
	}

	public class ReviewsModel
	{
		public List<ReviewModel> ListOfReviews { get; set; }
	}
}