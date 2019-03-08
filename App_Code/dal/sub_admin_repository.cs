using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for sub_admin_repository
/// </summary>
public class sub_admin_repository
{
	public sub_admin_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_sub_admin( sub_admin_model admin)
    {
        My_Connection conn = new  My_Connection();
        SqlParameter []p=new SqlParameter[11];
        p[0] = new SqlParameter("@f_name",admin.f_name);
        p[1] = new SqlParameter("@m_name", admin.m_name);
        p[2] = new SqlParameter("@l_name", admin.l_name);
        p[3] = new SqlParameter("@user_name", admin.user_name);
        p[4] = new SqlParameter("@address", admin.address);
        p[5] = new SqlParameter("@email", admin.email);
        p[6] = new SqlParameter("@number", admin.number);
        p[7] = new SqlParameter("@date_of_brith", admin.date_of_birth);
        p[8] = new SqlParameter("@password", admin.password);
        p[9] = new SqlParameter("@con_password", admin.con_password);
        p[10] = new SqlParameter("@image", admin.image);


        conn.insert("sp_sub_admin_insert", p);

    }
    public static List<sub_admin_model> select_all()
    {
        List<sub_admin_model> li = new List<sub_admin_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_sub_admin_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            sub_admin_model admin = new sub_admin_model();
            admin.admin_id = int.Parse(dr["admin_id"].ToString());
            admin.f_name = dr["f_name"].ToString();
            admin.m_name = dr["m_name"].ToString();
            admin.l_name = dr["l_name"].ToString();
            admin.user_name = dr["user_name"].ToString();
            admin.email = dr["email"].ToString();
            admin.address = dr["address"].ToString();
            admin.number = dr["number"].ToString();
            admin.date_of_birth = Convert.ToDateTime(dr["date_of_birth"].ToString());
            admin.password= dr["password"].ToString();
            //admin.con_password = dr["con_password"].ToString();
            admin.image = dr["image"].ToString();
            
               
            
                   
            li.Add(admin);
        }
        

        return li;
    }
    public static void select_id(int id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@admin_id",id);
        conn.select_id("sp_sub_admin_select_id", p);
    }

    public static void delete(int id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@admin_id",id);
        conn.delete("sp_sub_admin_delete", p);
    }
    public static void update(sub_admin_model admin)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[12];
        p[0] = new SqlParameter("@admin_id", admin.admin_id);
        p[1] = new SqlParameter("@f_name", admin.f_name);
        p[2] = new SqlParameter("@m_name", admin.m_name);
        p[3] = new SqlParameter("@l_name", admin.l_name);
        p[4] = new SqlParameter("@user_name", admin.user_name);
        p[5] = new SqlParameter("@address", admin.address);
        p[6] = new SqlParameter("@email", admin.email);
        p[7] = new SqlParameter("@number", admin.number);
        p[8] = new SqlParameter("@date_of_brith", admin.date_of_birth);
        p[9] = new SqlParameter("@password", admin.password);
        p[10] = new SqlParameter("@con_password", admin.con_password);
        p[11] = new SqlParameter("@image", admin.image);

        conn.update("sp_sub_admin_update", p);

    }

    public static sub_admin_model login_admin(string user_name, string password)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[2];
        p[0]=new SqlParameter("@user_name",user_name);
        p[1] = new SqlParameter("password", password);

        DataSet ds = conn.select_id("sp_sub_admin_login", p);
        if(ds.Tables[0].Rows.Count == 0)
        {
            return null;

        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            sub_admin_model admin = new sub_admin_model();
            admin.user_name = dr["user_name"].ToString();
            admin.password = dr["password"].ToString();
            return admin;
        }
    }

}