using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_test
{
    public partial class SignUp : System.Web.UI.Page
    {
        function fn = new function();
        String query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupButton_Click(object sender, EventArgs e)
        {
            string firstName = firstNames.Value;
            string lastName = lastNames.Value;
            string phone = phones.Value;
            string password = passwords.Value;
            string address = addres.Value;
            long phoneNumber;
            bool isValidPhoneNumber = long.TryParse(phone, out phoneNumber);

            if (!isValidPhoneNumber)
            {

                return;
            }
            else
            {
                if (firstName != "" && lastName != "" && phone != "" && password != "" && address != "")
                {
                    query = "insert into Customers(first_name,last_name,address,phone_number,password) values ('" + firstName + "','" + lastName + "','" + address + "','" + phone + "','" + password + "')";
                    fn.SetData(query);
                    Response.Redirect("Login.aspx");
                }
                else
                {

                    return;
                }

            }
        }

        protected void BackToLoginButton_Click(object sender, EventArgs e)
        {
            int X = 1;
            if (X == 1)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}