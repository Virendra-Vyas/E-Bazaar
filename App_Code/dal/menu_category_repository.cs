using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for menu_category_repository
/// </summary>
public class menu_category_repository
{
	public menu_category_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_menu_category(menu_category_model menu)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@name",menu.menu_category_name);
        p[1] = new SqlParameter("@status",menu.menu_category_status);

        conn.insert("sp_menu_category_insert", p);


    }
    public static List<menu_category_model> select_all()
    {
        List<menu_category_model> li = new List<menu_category_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_menu_category_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            menu_category_model menu = new menu_category_model();
            menu.menu_category_id = int.Parse(dr["menu_category_id"].ToString());
            menu.menu_category_name = dr["menu_category_name"].ToString();
            menu.menu_category_status = Boolean.Parse(dr["menu_category_status"].ToString());
            li.Add(menu);
        }
        return li;
    }

    public static menu_category_model select_id(int menu_category_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@menu_category_id", menu_category_id);

        DataSet ds = conn.select_id("sp_menu_category_select_id", p);
        if(ds.Tables[0].Rows.Count == 0)
        {
            return null;

        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            menu_category_model menu = new menu_category_model();
            menu.menu_category_id = int.Parse(dr["menu_category_id"].ToString());
            menu.menu_category_name = dr["menu_category_name"].ToString();
            menu.menu_category_status = Boolean.Parse(dr["menu_category_status"].ToString());

            return menu;

        }

    }

    public static void delete(int menu_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@menu_category_id", menu_id);
        conn.delete("sp_menu_category_delete", p);
    }
    public static void update(menu_category_model menu)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@menu_category_id", menu.menu_category_id);
        p[1] = new SqlParameter("@menu_category_name", menu.menu_category_name);
        p[2] = new SqlParameter("@menu_category_status", menu.menu_category_status);
        

        conn.update("sp_menu_category_update", p);


    }
    
}