using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for menu_category_model
/// </summary>
public class menu_category_model
{
	public menu_category_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int          menu_category_id { get; set; }
    public string       menu_category_name { get; set; }
    public Boolean      menu_category_status { get; set; }
}