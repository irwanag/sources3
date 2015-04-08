﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public class cdal
{

    protected void vPrepareParameter(ref SqlCommand cmd, List<cArrayList> arr)
    {
        for (int i = 0; i < arr.Count; i++)
        {
            cmd.Parameters.AddWithValue(arr[i].paramid, arr[i].ParamValue);
        }
    }

    public void vExecuteSP(string sSPName, List<cArrayList> arr)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cd.getConnection();
        cmd.CommandText = sSPName;
        cmd.CommandType = CommandType.StoredProcedure;
        vPrepareParameter(ref cmd, arr);
        cmd.ExecuteNonQuery();
    }
    public void vExecuteSP(string sSPName, List<cArrayList> arr, string paramout, ref string sOutValue)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cd.getConnection();
        cmd.CommandText = sSPName;
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter oParam = new SqlParameter();
        oParam.Direction = ParameterDirection.Output;
        oParam.ParameterName = paramout;
        oParam.Value = sOutValue;
        oParam.SqlDbType = SqlDbType.VarChar;
        oParam.Size = 50;
        cmd.Parameters.Add(oParam);
        vPrepareParameter(ref cmd, arr);
        cmd.ExecuteNonQuery();
        sOutValue = oParam.Value.ToString();
    }
    public void vGetRecordsetSP(string sSPName, ref SqlDataReader rs, List<cArrayList> arr)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cd.getConnection();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = sSPName;
        vPrepareParameter(ref cmd, arr);
        rs = cmd.ExecuteReader();
    }

    public void vGetRecordsetSP(string sSPName, ref SqlDataReader rs)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cd.getConnection();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = sSPName;
        rs = cmd.ExecuteReader();
    }
}
