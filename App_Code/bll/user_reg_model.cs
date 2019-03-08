using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for user_reg_model
/// </summary>
public class user_reg_model
{
	public user_reg_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int          user_id { get; set; }
    public string       user_name { get; set; }
    public string       password { get; set; }
    public string       email { get; set; }
    public string       gender { get; set; }
    public string       security_ans { get; set; }
}