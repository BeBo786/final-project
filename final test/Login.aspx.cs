using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_test.log_in_folder
{
    public partial class Login : System.Web.UI.Page
    {
        mm g = new mm();
        function fn = new function();
        String query;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            query = "select * from Customers";
            ds = fn.GetData(query);


            string username = usernamess.Value;
            string password = passwords.Value;
            g.golb(username);

            if (ds.Tables[0].Rows.Count == 0)
            {
                if (username == "bahaa" && password == "1")
                {
                    Response.Redirect("SignUp.aspx");
                }
                else
                {
                    errorMessages.InnerText = "UserName or Password are wrong";

                }
            }
            else
            {
                query = "select * from Customers where first_name ='" + username + "' and password='" + password + "'";
                ds = fn.GetData(query);
                if (ds.Tables[0].Rows.Count != 0)
                {
                    Response.Redirect("Home.aspx");
                    
                }
                else
                {
                    errorMessages.InnerText = "UserName or Password are wrong";
                }
            }

        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}