﻿using System;
using System.Collections.Generic;
using System.Linq;
using MyProject1.Models;
using MyProject1.Pages.Helpers;
using MyProject1.Models.Repository;
using System.Web.Routing;

namespace MyProject1.Pages
{
    public partial class CartView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Repository repository = new Repository();
                int gameId;
                if (int.TryParse(Request.Form["remove"], out gameId))
                {
                    Game gameToRemove = repository.Games
                        .Where(g => g.GameId == gameId).FirstOrDefault();
                    if (gameToRemove != null)
                    {
                        SessionHelper.GetCart(Session).RemoveLine(gameToRemove);
                    }
                }
            }
        }

        public IEnumerable<CartLine> GetCartLines()
        {
            return SessionHelper.GetCart(Session).Lines;
        }

        public decimal CartTotal
        {
            get
            {
                return SessionHelper.GetCart(Session).ComputeTotalValue();
            }
        }

        public string ReturnUrl
        {
            get
            {
                return SessionHelper.Get<string>(Session, SessionKey.RETURN_URL);
            }
        }

        public string CheckoutUrl
        {
            get
            {
                return RouteTable.Routes.GetVirtualPath(null, "checkout",
                    null).VirtualPath;
            }
        }
    }
}