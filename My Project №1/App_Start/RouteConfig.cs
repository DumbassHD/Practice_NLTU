using System;
using System.Web.Routing;

namespace MyProject1            // конфіги бажано юзати в основній папці простору імені проекта
{
    public class RouteConfig     
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(null, "list/{category}/{page}",
                                        "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list/{page}", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "", "~/Pages/Listing.aspx");
            routes.MapPageRoute(null, "list", "~/Pages/Listing.aspx");

            // іменований маршрут
            routes.MapPageRoute("cart", "cart", "~/Pages/CartView.aspx");
            routes.MapPageRoute("checkout", "checkout", "~/Pages/Checkout.aspx");

            // маршути для адмінських сторінок
            routes.MapPageRoute("admin_orders", "admin/orders", "~/Pages/Admin/Orders.aspx");
            routes.MapPageRoute("admin_games", "admin/games", "~/Pages/Admin/Games.aspx");
        }
    }
}