using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dummy_cart_repository
/// </summary>
public class dummy_cart_repository
{
	public dummy_cart_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_dummy_cart(dummy_cart_model dummy)
    {
        My_Connection conn = new My_Connection();
        SqlParameter []p= new SqlParameter[6];
        p[0] = new SqlParameter("@product_id", dummy.product_id);
        p[1] = new SqlParameter("@sessionid", dummy.session_id);
        p[2] = new SqlParameter("@user_name",  dummy.user_name);
        p[3] = new SqlParameter("@quantity", dummy.quantity);
        p[4] = new SqlParameter("@total", dummy.total);
        p[5] = new SqlParameter("@purchase_date", dummy.purchase_date);

        conn.insert("sp_dummy_cart_insert", p);

    }
    public static void select_id(int dummy_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@cart_id", dummy_id);
        conn.select_id("sp_dummy_cart_select_id", p);
    }

    public List<dummy_cart_model> select_all()
    {
        List<dummy_cart_model> li = new List<dummy_cart_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_dummy_cart_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            dummy_cart_model dummy = new dummy_cart_model();
            dummy.product_id = int.Parse(dr["product_id"].ToString());
            dummy.session_id = int.Parse(dr["session_id"].ToString());
            dummy.user_name = dr["user_name"].ToString();
            dummy.quantity = int.Parse(dr["quantity"].ToString());
            dummy.total = int.Parse(dr["total"].ToString());
            dummy.purchase_date = DateTime.Parse(dr["purchase_date"].ToString());
            li.Add(dummy);
        }
        return li;
    }

    public static void delete(int dummy_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new  SqlParameter[1];
        p[0] = new SqlParameter("@cart_id",dummy_id);
        conn.select_id("sp_dummy_cart_delete", p);
    }
    public static void update(dummy_cart_model dummy)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[7];
        p[0] = new SqlParameter("@product_id", dummy.product_id);
        p[1] = new SqlParameter("@session_id", dummy.session_id);
        p[2] = new SqlParameter("@user_name", dummy.user_name);
        p[3] = new SqlParameter("@quantity", dummy.quantity);
        p[4] = new SqlParameter("@total", dummy.total);
        p[5] = new SqlParameter("@purchase_date", dummy.purchase_date);
        p[6] = new SqlParameter("@cart_id",dummy.cart_id);

        conn.insert("sp_dummy_cart_update", p);
    }
}