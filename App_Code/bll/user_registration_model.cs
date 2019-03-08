using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for user_registration_model
/// </summary>
public class user_registration_model
{
	public user_registration_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int user_id { get; set; }
    public string frist_name{ get; set; }
    public string middle_name { get; set; }
    public string last_name { get; set; }
    public string email { get; set; }
    public Int64  mo_number { get; set; }
    public DateTime date_of_birth { get; set; }
    public string gender { get; set; }
    public string address { get; set; }
    public Int64 pin_code { get; set; }
    public string country { get; set; }
    public string state { get; set; }
    public string city { get; set; }
    public string user_name { get; set; }
    public string password { get; set; }
    
    public string security_answer { get; set; }
}