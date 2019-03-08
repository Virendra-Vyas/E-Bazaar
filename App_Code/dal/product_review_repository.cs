using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for product_review_repository
/// </summary>
public class product_review_repository
{
	public product_review_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void insert_product_review(product_review_model product_review)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[4];

        p[0] = new SqlParameter("@product_id", product_review.product_id);
        p[1] = new SqlParameter("@product_review_description", product_review.product_review_description);
        p[2] = new SqlParameter("@product_review_date_time", product_review.product_review_date_time);
        p[3] = new SqlParameter("@reviwer_name", product_review.reviwer_name);

        con.insert("sp_product_review_insert", p);
    }

    public static List<product_review_model> selectAll()
    {
        List<product_review_model> li = new List<product_review_model>();

        My_Connection con = new My_Connection();

        DataSet ds = con.select_all("sp_product_review_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            product_review_model product_review = new product_review_model();

            product_review.product_id = int.Parse(dr["product_id"].ToString());
            product_review.product_review_description = dr["product_review_description"].ToString();
            product_review.product_review_date_time = DateTime.Parse(dr["product_review_date_time"].ToString());
            product_review.reviwer_name = dr["reviwer_name"].ToString();
            li.Add(product_review);
        }

        return li;
    }

    public static void select_id(int product_review_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@product_review_id", product_review_id);
        con.select_id("sp_product_review_select_id", p);
    }

    public static void delete(int product_review_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@product_review_id", product_review_id);
        con.delete("sp_product_review_delete", p);
    }

    public static void update(product_review_model product_review)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[5];

        p[0] = new SqlParameter("@product_review_id", product_review.product_review_id);
        p[1] = new SqlParameter("@product_id", product_review.product_id);
        p[2] = new SqlParameter("@product_review_description", product_review.product_review_description);
        p[3] = new SqlParameter("@product_review_date_time", product_review.product_review_date_time);
        p[4] = new SqlParameter("@reviwer_name", product_review.reviwer_name);

        con.update("sp_product_review_update", p);
    }

}