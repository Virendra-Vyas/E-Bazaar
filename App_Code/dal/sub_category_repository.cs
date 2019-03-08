using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for sub_category_repository
/// </summary>
public class sub_category_repository
{
	public sub_category_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void insert_sub_category(sub_category_model sub_category)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[4];

        p[0] = new SqlParameter("@category_master_id", sub_category.category_master_id);
        p[1] = new SqlParameter("@sub_category_name", sub_category.sub_category_name);
        p[2] = new SqlParameter("@sub_category_new_old", sub_category.sub_category_new_old);
        p[3] = new SqlParameter("@sub_categoruy_status", sub_category.sub_category_status);

        con.insert("sp_sub_category_insert", p);
    }

    public static List<sub_category_model> selectAll()
    {
        List<sub_category_model> li = new List<sub_category_model>();

        My_Connection con = new My_Connection();

        DataSet ds = con.select_all("sp_sub_category_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            sub_category_model sub_category = new sub_category_model();

            sub_category.category_master_id = int.Parse(dr["category_master_id"].ToString());
            sub_category.sub_category_id = int.Parse(dr["sub_category_id"].ToString());
            sub_category.sub_category_name = dr["sub_category_name"].ToString();
            sub_category.sub_category_new_old = dr["sub_category_new_old"].ToString();
            sub_category.sub_category_status = Boolean.Parse(dr["sub_category_status"].ToString());

            li.Add(sub_category);
        }

        return li;
    }

    public static sub_category_model select_id(int sub_category_id )
    
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@sub_category_id", sub_category_id);

        DataSet ds = con.select_id("sp_sub_category_select_id", p);
        if(ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            sub_category_model sub = new sub_category_model();
            sub.sub_category_id = int.Parse(dr["sub_category_id"].ToString());
            sub.sub_category_name = dr["sub_category_name"].ToString();
            sub.sub_category_new_old = dr["sub_category_new_old"].ToString();
            sub.sub_category_status = Boolean.Parse(dr["sub_category_status"].ToString());

            return sub;

        }
        
    }

    public static void delete(int sub_category_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@sub_category_id", sub_category_id);
        con.delete("sp_sub_category_delete", p);
    }

    public static void update(sub_category_model sub_category)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[4];

        p[0] = new SqlParameter("@sub_category_id", sub_category.category_master_id);
        p[1] = new SqlParameter("@sub_category_name", sub_category.sub_category_name);
        p[2] = new SqlParameter("@sub_catyegory_new_old", sub_category.sub_category_new_old);
        p[3] = new SqlParameter("@sub_category_status", sub_category.sub_category_status);

        con.update("sp_sub_category_update", p);
    }
}