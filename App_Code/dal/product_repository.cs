using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for product_repository
/// </summary>
public class product_repository
{
	public product_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_product(product_model product)
    {
        My_Connection conn = new My_Connection();
        SqlParameter []p = new SqlParameter[16];
        p[0] = new SqlParameter("@company_id",product.company_id);
        p[1] = new SqlParameter("@sub_category_id", product.sub_category_id);
        p[2] = new SqlParameter("@seller_id", product.seller_id);
        p[3] = new SqlParameter("@product_name", product.product_name);
        p[4] = new SqlParameter("@product_code", product.product_code);
        p[5] = new SqlParameter("@product_price", product.product_price);
        p[6] = new SqlParameter("@product_short_description", product.product_short_description);
        p[7] = new SqlParameter("@product_warranty", product.product_warranty);
        p[8] = new SqlParameter("@product_specification", product.product_specification);
        p[9] = new SqlParameter("@product_stock", product.product_stock);
        p[10] = new SqlParameter("@product_replacement_days", product.product_replacement_days);
        p[11] = new SqlParameter("@product_delivery_days", product.product_delivery_days);
        p[12] = new SqlParameter("@product_total_no_of_ratings", product.product_total_no_of_ratings);
        p[13] = new SqlParameter("@product_avg_rating", product.product_avg_rating);
        p[14] = new SqlParameter("@product_main_image", product.product_main_image);
        p[15] = new SqlParameter("@product_status", product.product_status);

        conn.insert("sp_product_insert", p);


    }
    public static  List<product_model> select_all()
    {
        List<product_model> li = new List<product_model>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_product_select_all");
        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            product_model product = new product_model();
            product.product_id = int.Parse(dr["product_id"].ToString());
            product.company_id = int.Parse(dr["company_id"].ToString());
            product.seller_id = int.Parse(dr["seller_id"].ToString());
            product.product_name = dr["product_name"].ToString();
            product.product_code = dr["product_code"].ToString();
            product.product_price = float.Parse(dr["product_price"].ToString());
            product.product_short_description = dr["product_short_description"].ToString();
            product.product_warranty = int.Parse(dr["product_warranty"].ToString());
            product.product_specification = dr["product_specification"].ToString();
            product.product_stock = int.Parse(dr["product_stock"].ToString());
            product.product_replacement_days = int.Parse(dr["product_replacement_days"].ToString());
            product.product_delivery_days = int.Parse(dr["product_delivery_days"].ToString());
            product.product_total_no_of_ratings = int.Parse(dr["product_total_no_of_ratings"].ToString());
            product.product_avg_rating = float.Parse(dr["product_avg_rating"].ToString());
            product.product_main_image = dr["product_main_image"].ToString();
            product.product_status = Boolean.Parse(dr["product_status"].ToString());
            li.Add(product);

        }
        return li;
    }

    public static product_model select_id( int product_id) 
   
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id",product_id);

        DataSet ds = conn.select_id("sp_product_select_id", p);
        
        if(ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            product_model product = new product_model();
            product.product_id = int.Parse(dr["product_id"].ToString());
            product.product_name = dr["product_name"].ToString();
            product.product_code = dr["product_code"].ToString();
            product.product_price = int.Parse(dr["product_price"].ToString());
            product.product_short_description = dr["product_short_description"].ToString();
            product.product_warranty = int.Parse(dr["product_warranty"].ToString());
            product.product_stock = int.Parse(dr["product_stock"].ToString());
            product.product_main_image = dr["product_main_image"].ToString();
            product.product_status = Boolean.Parse(dr["product_status"].ToString());

            return product;

        }
    }
    public static void delete(int product_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@id", product_id);
        conn.select_id("sp_product_delete", p);
    }
    public static void update(product_model product)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[16];
        p[0] = new SqlParameter("@id", product.product_id);
        p[1] = new SqlParameter("@company_id", product.company_id);
        p[2] = new SqlParameter("@sub_category_id", product.sub_category_id);
        p[3] = new SqlParameter("@seller_id", product.seller_id);
        p[4] = new SqlParameter("@product_code", product.product_code);
        p[5] = new SqlParameter("@product_price", product.product_price);
        p[6] = new SqlParameter("@product_short_description", product.product_short_description);
        p[7] = new SqlParameter("@product_warranty", product.product_warranty);
        p[8] = new SqlParameter("@product_specification", product.product_specification);
        p[9] = new SqlParameter("@product_stock", product.product_stock);
        p[10] = new SqlParameter("@product_replacement_days", product.product_replacement_days);
        p[11] = new SqlParameter("@product_delivery_days", product.product_delivery_days);
        p[12] = new SqlParameter("@product_total_no_of_ratings", product.product_total_no_of_ratings);
        p[13] = new SqlParameter("@product_avg_rating", product.product_avg_rating);
        p[14] = new SqlParameter("@product_main_image", product.product_main_image);
        p[15] = new SqlParameter("@product_status", product.product_status);

        conn.update("sp_product_update", p);


    }
    

	
	
}