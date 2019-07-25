using System.Web;
using System.Web.Optimization;

namespace MiddleEarth
{
	public class BundleConfig
	{
		// Weitere Informationen zur Bündelung finden Sie unter https://go.microsoft.com/fwlink/?LinkId=301862.
		public static void RegisterBundles(BundleCollection bundles)
		{
			bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
						"~/Scripts/Jquery/jquery-{version}.js",
						"~/Scripts/Jquery/jquery-ui-{version}.js"));

			bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
						"~/Scripts/Jquery/jquery.validate*"));

			//Modernizr für Browserkompatibilität für Css3, HTML5 und JavaScript, sodass es in älteren Versionen trotzdem funktioniert
			bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
						"~/Scripts/modernizr-*"));

			bundles.Add(new ScriptBundle("~/bundles/javascript").Include(
					  "~/Scripts/scripts.js",
					  "~/Scripts/search.js",
					  "~/Scripts/contact-form.js"));

			bundles.Add(new StyleBundle("~/Content/css").Include(
					  "~/Content/Bootstrap/bootstrap.css",
					  "~/Content/Css/site.css",
					  "~/Content/Css/PopUp.css",
                      "~/Content/Css/Image-Carousel.css",
					  "~/Content/Css/map.css",
                      "~/Content/Css/impressum.css"));
		}
	}
}
