using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for wish_list_model
/// </summary>
public class wish_list_model
{
	public wish_list_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int wishlist_id { get; set; }
    public int user_id { get; set; }
    public int product_id { get; set; }
    public string  user_name { get; set; }
}