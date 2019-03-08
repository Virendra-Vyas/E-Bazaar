using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for seller_review_repository
/// </summary>
public class seller_review_repository
{
	public seller_review_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void insert_seller_review(seller_review_model seller_review)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[4];

        p[0] = new SqlParameter("@seller_id", seller_review.seller_id);
        p[1] = new SqlParameter("@seller_review_description", seller_review.seller_review_description);
        p[2] = new SqlParameter("@seller_review_date_time", seller_review.seller_review_date_time);
        p[3] = new SqlParameter("@reviwer_name", seller_review.reviwer_name);

        con.insert("sp_seller_review_insert", p);
    }

    public static List<seller_review_model> selectAll()
    {
        List<seller_review_model> li = new List<seller_review_model>();

        My_Connection con = new My_Connection();

        DataSet ds = con.select_all("sp_seller_review_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            seller_review_model seller_review = new seller_review_model();

            seller_review.seller_id = int.Parse(dr["seller_id"].ToString());
            seller_review.seller_review_description = dr["seller_review_description"].ToString();
            seller_review.seller_review_date_time = DateTime.Parse(dr["seller_review_date_time"].ToString());
            seller_review.reviwer_name = dr["reviwer_name"].ToString();

            li.Add(seller_review);
        }

        return li;
    }

    public static void select_id(int seller_review_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@seller_review_id", seller_review_id);
        con.select_id("sp_seller_review_select_id", p);
    }

    public static void delete(int seller_review_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@seller_review_id", seller_review_id);
        con.delete("sp_seller_review_delete", p);
    }

    public static void update(seller_review_model seller_review)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[5];

        p[0] = new SqlParameter("@seller_review_id",seller_review.seller_review_id);
        p[1] = new SqlParameter("@seller_id", seller_review.seller_id);
        p[2] = new SqlParameter("@seller_review_description", seller_review.seller_review_description);
        p[3] = new SqlParameter("@seller_review_date_time", seller_review.seller_review_date_time);
        p[4] = new SqlParameter("@reviwer_name", seller_review.reviwer_name);

        con.update("sp_seller_review_update", p);
    }
}