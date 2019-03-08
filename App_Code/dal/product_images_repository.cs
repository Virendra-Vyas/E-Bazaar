using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for product_images_repository
/// </summary>
public class product_images_repository
{
    public product_images_repository()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static void insert_images(product_images_model insert_image)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[3];

        p[0] = new SqlParameter("@product_id", insert_image.product_id);
        p[1] = new SqlParameter("@product_secondary_image", insert_image.product_secondary_image);
        p[2] = new SqlParameter("@product_image_status", insert_image.product_image_status);

        conn.insert("sp_product_images_insert", p);
    }

    public static List<product_images_model> selectAll()
    {
        List<product_images_model> li = new List<product_images_model>();

        My_Connection conn = new My_Connection();

        DataSet ds = conn.select_all("sp_product_images_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            product_images_model pim = new product_images_model();

            pim.product_image_id = int.Parse(dr["product_image_id"].ToString());
            pim.product_id = int.Parse(dr["product_id"].ToString());
            pim.product_secondary_image = dr["product_secondary_image"].ToString();
            pim.product_image_status = Boolean.Parse(dr["product_image_status"].ToString());
           
            li.Add(pim);
        }

        return li;
    }
    public static product_images_model select_id(int product_image_id)
   
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@product_image_id", product_image_id);
        

        DataSet ds = conn.select_id("sp_product_images_select_id", p);
        if(ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr= ds.Tables[0].Rows[0];
            product_images_model product_image = new product_images_model();
            product_image.product_image_id=int.Parse(dr["product_image_id"].ToString());
            product_image.product_secondary_image=dr["product_secondary_image"].ToString();
            product_image.product_image_status=Boolean.Parse(dr["product_image_status"].ToString());

            return product_image;

        }
    }

    public static void delete_product_images(int product_image_id)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@product_image_id",product_image_id);
        conn.delete("sp_product_images_delete",p);
    }

    public static void update_product_images(product_images_model pim)
    {
        My_Connection conn = new My_Connection();

        SqlParameter[] p = new SqlParameter[3];

        p[0] = new SqlParameter("@product_image_id", pim.product_image_id);

        p[1] = new SqlParameter("@product_secondary_image", pim.product_secondary_image);
        p[2] = new SqlParameter("@product_images_status", pim.product_image_status);

        conn.update("sp_product_images_update", p);
    }


}