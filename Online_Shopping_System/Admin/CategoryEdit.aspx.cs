﻿#region Imports...
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Online_Shopping_System.Web.UI;
#endregion

public partial class CategoryEdit : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{		
		FormUtil.RedirectAfterInsertUpdate(FormView1, "CategoryEdit.aspx?{0}", CategoryDataSource);
		FormUtil.RedirectAfterAddNew(FormView1, "CategoryEdit.aspx");
		FormUtil.RedirectAfterCancel(FormView1, "Category.aspx");
		FormUtil.SetDefaultMode(FormView1, "CategoryId");
	}
}


