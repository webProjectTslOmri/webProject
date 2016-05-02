using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null) 
            Response.Redirect("Login.aspx");

        if (Request["log"] != null && int.Parse(Request["log"]) == 0)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}