using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace final_test
{
    public partial class BuyMedicine : System.Web.UI.Page
    {
        mm r = new mm();
        function fn = new function();
        String query;
        String qury;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindMedicineList();
            }
        }




        protected void lvMedicineList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int x = 1;

        }
       

        protected void btnIncrease_Click(object sender, EventArgs e)
        {
            Button btnIncrease = (Button)sender;
            ListViewItem item = (ListViewItem)btnIncrease.NamingContainer;
            TextBox txtQuantity = (TextBox)item.FindControl("txtQuantity");
            int quantity = Convert.ToInt32(txtQuantity.Text);
            quantity++;
            txtQuantity.Text = quantity.ToString();
        }
        protected void btnDecrease_Click(object sender, EventArgs e)
        {
            Button btnDecrease = (Button)sender;
            ListViewItem item = (ListViewItem)btnDecrease.NamingContainer;
            TextBox txtQuantity = (TextBox)item.FindControl("txtQuantity");
            int quantity = Convert.ToInt32(txtQuantity.Text);
            if (quantity > 1)
            {
                quantity--;
                txtQuantity.Text = quantity.ToString();
            }
        }
        private void BindMedicineList()
        {
          query = "select * from Medicine";
            DataSet ds = fn.GetData(query);
            if (ds.Tables[0].Rows.Count != 0)
            {
                lvMedicineList.DataSource = ds;
                lvMedicineList.DataBind();
            }
            else
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String search = txtSearch.Value;
            query = "select * from Medicine Where mName like '%" + search + "%'";
            DataSet dss = fn.GetData(query);
            lvMedicineList.DataSource = dss;
            lvMedicineList.DataBind();
        }

        protected void GetValue(object sender, EventArgs e)
        {
            

            ListViewItem item = (sender as Button).NamingContainer as ListViewItem;

            String q = (item.FindControl("lblName") as Label).Text; 
            String quantity = ((TextBox)item.FindControl("txtQuantity")).Text;
    

            String queery = "Select * from Medicine where mName='" + q + "'";
            DataSet dss = fn.GetData(queery);
            String mname = dss.Tables[0].Rows[0][2].ToString();
            String price = dss.Tables[0].Rows[0][7].ToString();
            String dat = dss.Tables[0].Rows[0][4].ToString();
            int id = 12;

            //String p = "insert into hold_Table2(CustomerID,mName,priceperUnit,mDate,Quantity) values ('12','sdq','ssad',' sada','sadd')";
            String p = "insert into hold_Table2(CustomerID,mName,priceperUnit,mDate,Quantity) values ('" + id + "','" + mname + "','" + price + "','" + dat + "','" + quantity + "')";
            fn.SetData(p);
        }

        protected void lvMedicineList_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}