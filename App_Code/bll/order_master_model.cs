using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for order_master_model
/// </summary>
public class order_master_model
{
	public order_master_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int          order_master_id { get; set; }
    public int          session_id { get; set; }
    public string       order_no { get; set; }
    public DateTime     order_date { get; set; }
    public int          order_status { get; set; }
}