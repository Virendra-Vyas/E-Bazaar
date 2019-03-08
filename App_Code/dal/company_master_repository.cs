using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for company_master_repository
/// </summary>
public class company_master_repository
{
	public company_master_repository()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void insert_company(company_master_modal company)
    {
        My_Connection conn = new My_Connection();
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@company_name", company.company_name);
        p[1] = new SqlParameter("@company_status", company.company_status);

        conn.insert("sp_company_master_insert", p);

    }
    public static company_master_modal select_id(int company_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter []p=new SqlParameter[1];
        p[0] = new SqlParameter("@company_id", company_id);
       
        
        DataSet ds=conn.select_id("sp_company_master_select_id", p);

        if (ds.Tables[0].Rows.Count == 0)
        {
            return null;
        }
        else
        {
            DataRow dr = ds.Tables[0].Rows[0];

            company_master_modal company = new company_master_modal();
            company.company_id = int.Parse(dr["company_id"].ToString());
            company.company_name = dr["company_name"].ToString();
            company.company_status = Boolean.Parse(dr["company_status"].ToString());

            return company;
        }

    }
    public static List<company_master_modal> select_all()
    {
        List<company_master_modal> li = new List<company_master_modal>();
        My_Connection conn = new My_Connection();
        DataSet ds = conn.select_all("sp_company_master_select_all");
        for(int i=0;i<=ds.Tables[0].Rows.Count-1;i++)
        {
            DataRow dr = ds.Tables[0].Rows[i];
            company_master_modal company = new company_master_modal();
            company.company_id=int.Parse(dr["company_id"].ToString());
            company.company_name= dr["company_name"].ToString();
            company.company_status = Boolean.Parse(dr["company_status"].ToString());
            li.Add(company);

        }
        return li;
    }

    public static void delete(int company_id)
    {
        My_Connection conn = new My_Connection();
        SqlParameter [] p = new SqlParameter[1];
        p[0] = new SqlParameter("@company_id",company_id);
        conn.delete("sp_company_master_delete", p);
    }

    public static void update(company_master_modal company)
    {
        My_Connection conn = new My_Connection();
        SqlParameter []p = new  SqlParameter[3];
        p[0] = new SqlParameter("@company_name", company.company_name);
        p[1] = new SqlParameter("@company_status", company.company_status);
        p[2] = new SqlParameter("@company_id", company.company_id);

        conn.update("sp_company_master_update", p);
    }

}