﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ClaseBD
{
    public class BD
    {
        private SqlConnection cn;

        public BD(string rutaBD)
        {
            cn = new SqlConnection(rutaBD);

            cn.Open();
        }


        //~BD()
        //{
        //    cn.Close();
        //}

        public void Cerrar()
        {
            cn.Close();
        }



        public int Command(string consulta)
        {
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = consulta;

            cmd.Connection = cn;

            return cmd.ExecuteNonQuery();
        }

        public DataTable Consulta_DataTable(string consulta)
        {
            DataSet ds = new DataSet();

            SqlDataAdapter adap = new SqlDataAdapter(consulta, cn);

            adap.Fill(ds, "tabla");

            return ds.Tables["tabla"];
        }

        /*
        
        public void Conexion(string rutaBD)
        {
            cn = new SqlConnection(rutaBD);

            cn.Open();
        }

        public int CommandRun()
        {
            return cmd.ExecuteNonQuery();
        }

        public void cambiarConsulta(string consulta_p)
        {
            consulta = consulta_p;
        }
        
        public string getConsulta()
        {
            return consulta;
        }
        
        public void CommandProcedure(string StoredProcedureName)
        {
            cmd = new SqlCommand();

            cmd.CommandText = StoredProcedureName;

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection = cn;
        }

        public SqlCommand getCommand()
        {
            return cmd;
        }

        public void setCommand(SqlCommand cmd_p)
        {
            cmd = cmd_p;
        }
        
        public void Adapter(string consulta)
        {
            adap = new SqlDataAdapter(consulta, cn);
        }

        public void readerClose()
        {
            reader.Close();
        }

        public void DataSet(string tabla)
        {
            ds = new DataSet();

            adap.Fill(ds, tabla);
        }

        public void actualizarDataSet(string tabla)
        {
            adap.Fill(ds, tabla);
        }

        public void grid_Reader(ref GridView grid)
        {
            grid.DataSource = reader;

            grid.DataBind();
        }

        public void ddl_Reader(DropDownList ddl,string dataTextField,string dataValueField = "")
        {  
            ddl.DataSource = reader;

            ddl.DataTextField = dataTextField;

            if (dataValueField != "")
            ddl.DataValueField = dataValueField;

            ddl.DataBind();
        }

        public void ddl_ReaderRead2(DropDownList ddl,string Column1,string Column2)
        {
            while(reader.Read())
            {
              ddl.Items.Add(reader[Column1] + "-" + reader[Column2]);
            }
        }

        public void ddl_DataSet(DropDownList ddl,string tabla, string dataTextField, string dataValueField = "")
        {
            ddl.DataSource = ds.Tables[tabla];

            ddl.DataTextField = dataTextField;

            if (dataValueField != "")
               ddl.DataValueField = dataValueField;

            ddl.DataBind();
        }

        public void ddl_DataSetRead2(DropDownList ddl, string tabla, string Column1, string Column2)
        {
            foreach(DataRow dr in ds.Tables[tabla].Rows)
            {
                ddl.Items.Add(dr[Column1] + "-" + dr[Column2]);
            } 
        }

        public void cargarLabel(Label lbl, string mensaje)
        {
            lbl.Text = mensaje;
        }

        public void limpiartxt(TextBox textBox)
        {
            textBox.Text = "";
        }

        */

    }
}