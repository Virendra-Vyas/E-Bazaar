using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for myconncation
/// </summary>
public class My_Connection
{
    SqlConnection conn = new SqlConnection(@"Data Source=anil;Initial Catalog=E-Bazaar;Integrated Security=True");
    public My_Connection()

    {
        //
        // TODO: Add constructor logic here
        //

    }


    public void insert(string sname, SqlParameter[] p)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand(sname, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(p);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
    }

    public DataSet select_all(string spname)
    {
        SqlCommand cmd = new SqlCommand(spname, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        
        return ds;


    }
    
    public DataSet select_id(string spname, SqlParameter[] p)
    {
        SqlCommand cmd = new SqlCommand(spname, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(p);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        return ds;


    }
    public void delete(string spname, SqlParameter[] p)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand(spname, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(p);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
    }

    public void update(string spname, SqlParameter[] p)
    {
        conn.Open();

        SqlCommand cmd = new SqlCommand(spname, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(p);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        conn.Close();
    }



}