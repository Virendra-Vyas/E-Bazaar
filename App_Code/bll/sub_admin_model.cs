using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sub_admin_model
/// </summary>
public class sub_admin_model
{
	public sub_admin_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int admin_id { get; set; }
    public string f_name { get; set; }
    public string m_name { get; set; }
    public string l_name { get; set; }
    public string user_name { get; set; }
    public string email { get; set; }
    public string address { get; set; }
    public string number { get; set; }
    public DateTime date_of_birth  { get; set; }
    public string password { get; set; }
    public string con_password { get; set; }
    public string image { get; set; }
}
