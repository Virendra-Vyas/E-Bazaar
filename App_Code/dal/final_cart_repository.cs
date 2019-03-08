using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for final_cart_repository
/// </summary>
public class final_cart_repository
{
	public final_cart_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_final_cart(final_cart_model final)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@product_id", final.product_id);
        p[1] = new SqlParameter("@session_id", final.session_id);
        p[2] = new SqlParameter("@user_name", final.user_name);
        p[3] = new SqlParameter("@quantity", final.quantity);
        p[4] = new SqlParameter("@total", final.total);
        p[5] = new SqlParameter("@purchase_date", final.purchase_date);

        conn.insert("sp_final_cart_insert", p);

    }
    public static void select_id(int final_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@cart_id", final_id);
        conn.select_id("sp_final_cart_select_id", p);
    }

    public List<final_cart_model> select_all()
    {
        List<final_cart_model> li = new List<final_cart_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_final_cart_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            final_cart_model final = new final_cart_model();
            final.product_id = int.Parse(dr["product_id"].ToString());
            final.session_id = int.Parse(dr["session_id"].ToString());
            final.user_name = dr["user_name"].ToString();
            final.quantity = int.Parse(dr["quantity"].ToString());
            final.total = int.Parse(dr["total"].ToString());
            final.purchase_date = DateTime.Parse(dr["purchase_date"].ToString());
            li.Add(final);
        }
        return li;
    }

    public static void delete(int final_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@cart_id", final_id);
        conn.select_id("sp_final_cart_delete", p);
    }
    public static void update(final_cart_model final)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[7];
        p[0] = new SqlParameter("@product_id", final.product_id);
        p[1] = new SqlParameter("@session_id", final.session_id);
        p[2] = new SqlParameter("@user_name", final.user_name);
        p[3] = new SqlParameter("@quantity", final.quantity);
        p[4] = new SqlParameter("@total", final.total);
        p[5] = new SqlParameter("@purchase_date", final.purchase_date);
        p[6] = new SqlParameter("@cart_id", final.cart_id);

        conn.insert("sp_final_cart_update", p);
    }
}