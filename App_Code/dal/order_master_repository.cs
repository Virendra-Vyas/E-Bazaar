using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for order_master_repository
/// </summary>
public class order_master_repository
{
	public order_master_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_order_master(order_master_model order)
    {
        My_Connection conn = new My_Connection();
        SqlParameter [] p = new SqlParameter[4];
        p[0] = new SqlParameter("@session_id",order.session_id);
        p[1] = new SqlParameter("@order_no", order.order_no);
        p[2] = new SqlParameter("@order_date", order.order_date);
        p[3] = new SqlParameter("@order_status", order.order_status);

        conn.insert("sp_order_master_insert", p);
    }
    public static List<order_master_model> select_all()
    {
        List<order_master_model> li = new List<order_master_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_order_master_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            order_master_model order = new order_master_model();
            order.order_master_id = int.Parse(dr["order_master_id"].ToString());
            order.session_id = int.Parse(dr["session_id"].ToString());
            order.order_no = dr["order_no"].ToString();
            order.order_date = DateTime.Parse(dr["order_date"].ToString());
            order.order_status = int.Parse(dr["order_status"].ToString());
            li.Add(order);
        }
        return li;
    }

    public static void select_id(int order_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@order_cmaster_id", order_id);
        conn.select_id("sp_order_master_select_id", p);
    }
    public static void delete(int order_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@order_master_id", order_id);
        conn.select_id("sp_order_master_delete", p);
    }
    public static void update(order_master_model order)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@order_master_id", order.order_master_id);
        p[1] = new SqlParameter("@session_id", order.session_id);
        p[2] = new SqlParameter("@order_no", order.order_no);
        p[3] = new SqlParameter("@order_date", order.order_master_id);
        p[4] = new SqlParameter("@order_status", order.order_status);


        conn.update("sp_order_category_update", p);


    }
}