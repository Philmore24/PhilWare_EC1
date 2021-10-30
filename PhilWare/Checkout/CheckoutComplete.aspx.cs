using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhilWare.Models;

namespace PhilWare.Checkout
{
    public partial class CheckoutComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear shopping cart.
            using (PhilWare.Logic.ShoppingCartActions usersShoppingCart =
                new PhilWare.Logic.ShoppingCartActions())
            {
                usersShoppingCart.EmptyCart();
            }

            Session["Username"] = User.Identity.Name;


            Name.Text = Session["Username"].ToString();

            TotalReview.Text = Session["Total"].ToString();
        }




        protected void Home_Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}