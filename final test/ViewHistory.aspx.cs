using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final_test
{
    public partial class ViewHistory : System.Web.UI.Page
    {
        mm r = new mm();
        function fn = new function();
        String query;
        String qury;
        protected void Page_Load(object sender, EventArgs e)
        {
            String userNam = r.getsta();

            query = "SELECT id FROM Customers WHERE first_name ='" + userNam + "'";
            DataSet ds = fn.GetData(query);
            String s = ds.Tables[0].Rows[0][0].ToString();
            int number1 = int.Parse(s);
            qury = "select * from MedicineHistory Where CustomerID='" + number1 + "'";
            DataSet dss = fn.GetData(qury);
            if (dss.Tables[0].Rows.Count != 0)
            {
                rptMedicineHistory.DataSource = dss;
                rptMedicineHistory.DataBind();
            }
            else
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String MedName = txtSearch.Text;
            string userNam = r.getsta();
            query = "SELECT id FROM Customers WHERE first_name ='" + userNam + "'";
            DataSet ds = fn.GetData(query);
            String s = ds.Tables[0].Rows[0][0].ToString();
            int number1 = int.Parse(s);
            qury = "select * from MedicineHistory Where CustomerID='" + number1 + "'and MedicineName like '" + MedName + "%'";
            DataSet dss = fn.GetData(qury);
            if (dss.Tables[0].Rows.Count != 0)
            {
                rptMedicineHistory.DataSource = dss;
                rptMedicineHistory.DataBind();
            }
            else
            {
                rptMedicineHistory.DataSource = dss;
                rptMedicineHistory.DataBind();

            }

        }

        protected void rptMedicineHistory_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            String Don = "1";
        }
    }
}