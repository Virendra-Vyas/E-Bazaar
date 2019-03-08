using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for wish_list_repository
/// </summary>
public class wish_list_repository
{
	public wish_list_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void insert(wish_list_model wish_list)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[3];

        p[0] = new SqlParameter("@user_id", wish_list.user_id);
        p[1] = new SqlParameter("@product_id", wish_list.product_id);
        p[2] = new SqlParameter("@user_name", wish_list.user_name);

        conn.insert("sp_wish_list_insert", p);
    }

    public static List<wish_list_model> selectAll()
    {
        List<wish_list_model> li = new List<wish_list_model>();

        My_Connection conn = new My_Connection();

        DataSet ds = conn.select_all("sp_wish_list_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            wish_list_model wish_list = new wish_list_model();

            wish_list.user_id = int.Parse(dr["user_id"].ToString());
            wish_list.product_id = int.Parse(dr["product_id"].ToString());
            wish_list.user_name = dr["user_name"].ToString();
          

            li.Add(wish_list);
        }

        return li;
    }

    public static void select_id(int wish_list_id)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@wish_list_id", wish_list_id);
        conn.select_id("sp_wish_list_select_id", p);
    }

    public static void delete(int wish_list_id)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@wish_list_id", wish_list_id);
        conn.delete("sp_wish_list_id_delete", p);
    }

    public static void update(wish_list_model wish_list)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[4];

        p[0] = new SqlParameter("@wish_list_id",wish_list.wishlist_id);
        p[1] = new SqlParameter("@user_id", wish_list.user_id);
        p[2] = new SqlParameter("@product_id", wish_list.product_id);
        p[3] = new SqlParameter("@user_name", wish_list.user_name);

        conn.update("sp_wish_list_update", p);
    }
}