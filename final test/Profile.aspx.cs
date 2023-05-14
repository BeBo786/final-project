using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace final_test
{
    public partial class Profile : System.Web.UI.Page
    {
        mm g = new mm();
        function fn = new function();
        String query;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           

            if (firstNamee.Value != "" && firstNamee.Value != "" && address.Value != "" && phoneNumber.Value != "" && Passwordr.Value != "")
            {
                String userNam = g.getsta();
                String quwery = "SELECT id FROM Customers WHERE first_name ='" + userNam + "'";
                DataSet ds = fn.GetData(quwery);
                String s = ds.Tables[0].Rows[0][0].ToString();
                int number1 = int.Parse(s);
                String fname = firstNamee.Value;
                String lname = lastNamee.Value;
                String Address = address.Value;
                String phone = phoneNumber.Value;
                String Pass = Passwordr.Value;
                String qurey = "UPDATE Customers set first_name ='" + fname + "',last_name='" + lname + "',address='" + Address + "',phone_number='" + phone + "',password='" + Pass + "' WHERE id='" + number1 + "'";
                fn.SetData(qurey);
                Response.Redirect("Home.aspx");
            }
            else
            {
                errorMessages.InnerText = "Enter All data";
            }
        }

        protected void Show_Click(object sender, EventArgs e)
        {
            String userNam = g.getsta();

            query = "SELECT * FROM Customers WHERE first_name ='" + userNam + "'";
            DataSet ds = fn.GetData(query);

            String fname = ds.Tables[0].Rows[0][1].ToString();
            String lname = ds.Tables[0].Rows[0][2].ToString();
            String Address = ds.Tables[0].Rows[0][3].ToString();
            String phone = ds.Tables[0].Rows[0][4].ToString();
            String Pass = ds.Tables[0].Rows[0][5].ToString();

            firstNamee.Value = fname;
            lastNamee.Value = lname;
            address.Value = Address;
            phoneNumber.Value = phone;
            Passwordr.Value = Pass;
        }
    }
}