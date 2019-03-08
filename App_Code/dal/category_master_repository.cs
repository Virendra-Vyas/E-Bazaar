using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for category_master_repository
/// </summary>
public class category_master_repository
{
    public category_master_repository()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void insert_category(category_master_model category)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@Menu_category_id", category.menu_category_id);
        p[1] = new SqlParameter("@category_name", category.category_name);
        p[2] = new SqlParameter("@category_status", category.category_status);

        conn.insert("sp_category_master_insert", p);

    }
    public static List<category_master_model> select_all()
    {
        List<category_master_model> li=new List<category_master_model>();
        My_Connection conn = new My_Connection();
        DataSet ds= conn.select_all("sp_category_master_select_all");
        for(int i=0;i<=ds.Tables[0].Rows.Count-1;i++)
        {
            DataRow dr= ds.Tables[0].Rows[i];
            category_master_model category=new category_master_model();
            category.menu_category_id = int.Parse(dr["Menu_category_id"].ToString());
            category.category_master_id=int.Parse(dr["category_master_id"].ToString());
            category.category_name = dr["category_name"].ToString();
            category.category_status = Boolean .Parse(dr["category_status"].ToString());
            li.Add(category);
        }
        return li;
    }

    public static category_master_model select_id(int category_master_id)
    {

        My_Connection conn = new My_Connection();
        SqlParameter []p=new SqlParameter[1];
        p[0] = new SqlParameter("@category_master_id", category_master_id);

        DataSet ds = conn.select_id("sp_category_master_select_id", p);
        if (ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            category_master_model category = new category_master_model();
            category.category_master_id = int.Parse(dr["category_master_id"].ToString());
            category.menu_category_id = int.Parse(dr["menu_category_id"].ToString());
            category.category_name = dr["category_name"].ToString();
            category.category_status = Boolean.Parse(dr["category_status"].ToString());

            return category;

        }
    }

    public static void delete(int category_master_id)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@category_master_id", category_master_id);

        conn.delete("sp_category_master_delete", p);
    }

    public static void update(category_master_model category)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[3];
        //p[0] = new SqlParameter("@f_key", category.menu_category_id);
        p[0] = new SqlParameter("@category_master_id", category.category_master_id);
        p[1] = new SqlParameter("@category_name", category.category_name);
        p[2] = new SqlParameter("@category_status", category.category_status);
       

        conn.update("sp_category_master_update", p);
    }


}
                

    
