using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for seller_registration_repository
/// </summary>
public class seller_registration_repository
{
	public seller_registration_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void insert_seller(seller_registration_model seller)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[11];

        p[0] = new SqlParameter("@seller_company_name", seller.seller_company_name);
        p[1] = new SqlParameter("@seller_company_address", seller.seller_company_address);
        p[2] = new SqlParameter("@seller_company_contact_1", seller.seller_company_contact_1);
        p[3] = new SqlParameter("@seller_company_contact_2", seller.seller_company_contact_2);
        p[4] = new SqlParameter("@seller_company_email", seller.seller_company_email);
        p[5] = new SqlParameter("@seller_company_logo", seller.seller_company_logo);
        p[6] = new SqlParameter("@seller_company_website", seller.seller_company_website);
        p[7] = new SqlParameter("@seller_company_cst_no", seller.seller_company_cst_no);
        p[8] = new SqlParameter("@seller_status", seller.seller_status);
        p[9] = new SqlParameter("@user_name", seller.user_name);
        p[10] = new SqlParameter("@password", seller.password);

        con.insert("sp_seller_registration_insert", p);
    }

    public static List<seller_registration_model> selectAll()
    {
        List<seller_registration_model> li = new List<seller_registration_model>();

        My_Connection con = new My_Connection();

        DataSet ds = con.select_all("sp_seller_registration_select_all");

        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];

            seller_registration_model seller = new seller_registration_model();
            seller.seller_id = int.Parse(dr["seller_id"].ToString());
            seller.seller_company_name = dr["seller_company_name"].ToString();
            seller.seller_company_address = dr["seller_company_address"].ToString();
            seller.seller_company_contact_1 = dr["seller_company_contact_1"].ToString();
            seller.seller_company_contact_2 = dr["seller_company_contact_2"].ToString();
            seller.seller_company_email = dr["seller_company_email"].ToString();
            seller.seller_company_logo = dr["seller_company_logo"].ToString();
            seller.seller_company_website = dr["seller_company_website"].ToString();
            seller.seller_company_cst_no = dr["seller_company_cst_no"].ToString();
            seller.seller_status =dr["seller_status"].ToString();
            seller.user_name = dr["user_name"].ToString();
            seller.password = dr["password"].ToString();
           
            li.Add(seller);
        }

        return li;
    }

    public static void select_id(int seller_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@seller_id",seller_id);
        con.select_id("sp_seller_registration_select_id", p);
    }

    public static void delete(int seller_id)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@seller_id", seller_id);
        con.delete("sp_seller_registration_delete", p);
    }

    public static void update(seller_registration_model seller)
    {
        My_Connection con = new My_Connection();

        SqlParameter[] p = new SqlParameter[12];

        p[0] = new SqlParameter("@seller_id",seller.seller_id);
        p[1] = new SqlParameter("@seller_company_name", seller.seller_company_name);
        p[2] = new SqlParameter("@seller_company_address", seller.seller_company_address);
        p[3] = new SqlParameter("@seller_company_contact_1", seller.seller_company_contact_1);
        p[4] = new SqlParameter("@seller_company_contact_2", seller.seller_company_contact_2);
        p[5] = new SqlParameter("@seller_company_email", seller.seller_company_email);
        p[6] = new SqlParameter("@seller_company_logo", seller.seller_company_logo);
        p[7] = new SqlParameter("@seller_company_website", seller.seller_company_website);
        p[8] = new SqlParameter("@seller_company_cst_no", seller.seller_company_cst_no);
        p[9] = new SqlParameter("@seller_status", seller.seller_status);
        p[10] = new SqlParameter("@user_name", seller.user_name);
        p[11] = new SqlParameter("@password", seller.password);

        con.update("sp_seller_registration_update", p);
    }
    public static seller_registration_model login_seller(string username, string password)
    {
        My_Connection con = new My_Connection();
        SqlParameter[] p = new SqlParameter[2];
        p[0]=new SqlParameter("@username",username);
        p[1]=new SqlParameter("@password",password);
        

        DataSet ds = con.select_id("sp_seller_registration_check", p);

        if (ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];
            seller_registration_model srm = new seller_registration_model();
            
            srm.user_name = dr["user_name"].ToString();
            srm.password = dr["password"].ToString();
            return srm;
        }
    }
}