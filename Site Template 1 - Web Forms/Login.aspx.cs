using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Site_Template_1___Web_Forms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if logged in, redirect to default page.
            if (Request.IsAuthenticated)
            {
                Response.Redirect("~/home");
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //TODO: Implement your own logic to verify credentials. For now, verification is hard-coded.

            // Three valid username/password pairs: reiner/password, rein/password, and reins/password.
            string[] users = { "reiner", "rein", "reins" };
            string[] passwords = { "password", "password", "password" };
            for (int i = 0; i < users.Length; i++)
            {
                bool validUsername = (string.Compare(UserName.Text, users[i], true) == 0);
                bool validPassword = (string.Compare(Password.Text, passwords[i], false) == 0);
                if (validUsername && validPassword)
                {
                    FormsAuthentication.RedirectFromLoginPage(UserName.Text, RememberMe.Checked);
                }
            }
            // If we reach here, the user's credentials were invalid
            InvalidCredentialsMessage.Visible = true;
        }
    }
}