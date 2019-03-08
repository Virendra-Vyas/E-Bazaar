using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for user_registration_repository
/// </summary>
public class user_registration_repository
{
	public user_registration_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void insert_user(user_registration_model user)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[15];

        p[0] = new SqlParameter("@frist_name", user.frist_name);
        p[1] = new SqlParameter("@middle_name", user.middle_name);
        p[2] = new SqlParameter("@last_name", user.last_name);
        p[3] = new SqlParameter("@email", user.email);
        p[4] = new SqlParameter("@mo_number", user.mo_number);
        p[5] = new SqlParameter("@date_of_birth", user.date_of_birth);
        p[6] = new SqlParameter("@gender", user.gender);
        p[7] = new SqlParameter("@address", user.address);
        p[8] = new SqlParameter("@pin_code", user.pin_code);
        p[9] = new SqlParameter("@country", user.country);
        p[10] = new SqlParameter("@state", user.state);
        p[11] = new SqlParameter("@city", user.city);
        p[12] = new SqlParameter("@user_name", user.user_name);
        p[13] = new SqlParameter("@password", user.password);
       
        p[14] = new SqlParameter("@secuserity_answer", user.security_answer);


        conn.insert("sp_user_registration_insert", p);
    }

    public static List<user_registration_model> selectAll()
    {
        List<user_registration_model> li = new List<user_registration_model>();

        My_Connection conn = new My_Connection();

        DataSet ds = conn.select_all("sp_user_registration_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            user_registration_model user = new user_registration_model();

            user.user_id =int.Parse( dr["user_id"].ToString());
            user.frist_name = dr["frist_name"].ToString();
            user.middle_name = dr["middle_name"].ToString();
            user.last_name = dr["last_name"].ToString();
            user.email = dr["email"].ToString();
            user.mo_number = Int64.Parse(dr["mo_number"].ToString());
            user.date_of_birth = Convert.ToDateTime( dr["date_of_birth"].ToString());
            
            user.gender = dr["gender"].ToString();
            user.address = dr["address"].ToString();
            user.pin_code =Int64.Parse( dr["pin_code"].ToString());
            user.country = dr["country"].ToString();
            user.state = dr["state"].ToString();
            user.city = dr["city"].ToString();
            user.user_name = dr["user_name"].ToString();
            user.password = dr["password"].ToString();
            
            user.security_answer = dr["security_answer"].ToString();

            li.Add(user);
        }

        return li;
    }

    public static void select_id(int user_id)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@user_id", user_id);
        conn.select_id("sp_user_registration_select_id", p);
    }

    public static void delete(int user_id)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@user_id", user_id);
        conn.delete("sp_user_registration_delete", p);
    }

    public static void update(user_registration_model user)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[16];

        p[0] = new SqlParameter("user_id", user.user_id);
        p[1] = new SqlParameter("@frist_name", user.frist_name);
        p[2] = new SqlParameter("@middle_name", user.middle_name);
        p[3] = new SqlParameter("@last_name", user.last_name);
        p[4] = new SqlParameter("@email", user.email);
        p[5] = new SqlParameter("@mo_number", user.mo_number);
        p[6] = new SqlParameter("@date_of_birth", user.date_of_birth);
        p[7] = new SqlParameter("@gender", user.gender);
        p[8] = new SqlParameter("@address", user.address);
        p[9] = new SqlParameter("@pin_code", user.pin_code);
        p[10] = new SqlParameter("@country", user.country);
        p[11] = new SqlParameter("@state", user.state);
        p[12] = new SqlParameter("@city", user.city);
        p[13] = new SqlParameter("@user_name", user.user_name);
        p[14] = new SqlParameter("@password", user.password);
        
        p[15] = new SqlParameter("@security_answer", user.security_answer);


        conn.update("sp_user_registration_update", p);
    }
}