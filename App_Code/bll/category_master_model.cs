using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for category_master_model
/// </summary>
public class category_master_model
{
	public category_master_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int      category_master_id { get; set; }
    public int      menu_category_id { get; set; }
    public string   category_name { get; set; }
    public Boolean  category_status { get; set; }


}