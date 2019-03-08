using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for user_reg_repository
/// </summary>
public class user_reg_repository
{
	public user_reg_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void inert_user(user_reg_model add_user)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@user_name", add_user.user_name);
        p[1] = new SqlParameter("@password", add_user.password);
        p[2] = new SqlParameter("@email", add_user.email);
        p[3] = new SqlParameter("@gender", add_user.gender);
        p[4] = new SqlParameter("@security_ans", add_user.security_ans);

        conn.insert("sp_user_reg_insert",p);
        

    }

    public static List<user_reg_model> select_all()
    {
        List<user_reg_model> li = new List<user_reg_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_user_reg_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1;i++ )
        {
            DataRow dr = ds.Tables[0].Rows[i];
            user_reg_model user = new user_reg_model();
            user.user_id = int.Parse(dr["user_id"].ToString());
            user.user_name = dr["user_name"].ToString();
            user.password = dr["password"].ToString();
            user.email = dr["email"].ToString();
            user.gender = dr["gender"].ToString();
            user.security_ans = dr["security_ans"].ToString();
            li.Add(user);
            
        }
        return li;
    }

    public static user_reg_model select_id(int user_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@user_id", user_id);

        DataSet ds = conn.select_id("sp_user_reg_id",p);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return null;

        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            user_reg_model user = new user_reg_model();
            user.user_id = int.Parse(dr["user_id"].ToString());
            user.user_name = dr["user_name"].ToString();
            user.password = dr["password"].ToString();
            user.email = dr["email"].ToString();
            user.gender = dr["gender"].ToString();
            user.security_ans = dr["security_ans"].ToString();

            return user;
        }
    }

    public static void delete( int user_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@user_id", user_id);
        conn.delete("sp_user_reg_delete", p);
    }

    public static void update( user_reg_model user)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@user_id", user.user_id);
        p[1] = new SqlParameter("@user_name", user.user_name);
        p[2] = new SqlParameter("@password", user.password);
        p[3] = new SqlParameter("@email", user.email);
        p[4] = new SqlParameter("@gender", user.gender);
        p[5] = new SqlParameter("@security_ans", user.security_ans);

        conn.update("sp_user_reg_update", p);

    }

    public static user_reg_model login_user(string user_name, string password)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@user_name", user_name);
        p[1] = new SqlParameter("@password",password);

        DataSet ds = conn.select_id("sp_user_reg_login", p);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            user_reg_model user_login = new user_reg_model();
            seller_registration_model srm = new seller_registration_model();

            srm.user_name = dr["user_name"].ToString();
            srm.password = dr["password"].ToString();
            return user_login;
        }
    }

   
}