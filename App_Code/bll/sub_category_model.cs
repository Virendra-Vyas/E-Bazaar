using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sub_category_model
/// </summary>
public class sub_category_model
{
	public sub_category_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int sub_category_id { get; set; }
    public int category_master_id { get; set; }
    public string sub_category_name { get; set; }
    public string sub_category_new_old { get; set; }
    public Boolean sub_category_status { get; set; }

}