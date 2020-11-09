using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

namespace ClaseBD
{
    public class BD
    {
        private string rutaBD;
        
        private string consulta;
        
        private SqlConnection cn;

        private SqlCommand cmd;

        private SqlDataReader reader;

        private SqlDataAdapter adap;

        private DataSet ds;

        public BD(string rutaBD_p) 
        {
            Conexion(rutaBD_p);
        }

        public BD()
        {

        }

        public void cambiarRuta(string rutaBD_p)
        {
            rutaBD = rutaBD_p;
        }

        public void Conexion(string rutaBD_p)
        {
            cambiarRuta(rutaBD_p);
            
            cn = new SqlConnection(rutaBD);

            cn.Open();
        }

        public void Cerrar()
        {
            cn.Close();
        }

        public void cambiarConsulta(string consulta_p)
        {
            consulta = consulta_p;
        }

        public string getConsulta()
        {
            return consulta;
        }

        public void Command(string consulta_p)
        {

            cambiarConsulta(consulta_p);

            cmd = new SqlCommand();

            cmd.CommandText = consulta;

            cmd.Connection = cn;
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

        public int CommandRun()
        {
            return cmd.ExecuteNonQuery();
        }

        public void Adapter(string consulta_p)
        {
            
            cambiarConsulta(consulta_p);

            adap = new SqlDataAdapter(consulta, cn);
        }

        public void Reader()
        {
            reader = cmd.ExecuteReader();
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

        //public void grid_Reader(ref GridView grid)
        //{
        //    grid.DataSource = reader;

        //    grid.DataBind();
        //}

        public DataTable grid_DataTable(string tabla)
        {
            return ds.Tables[tabla];
        }

        //public void ddl_Reader(DropDownList ddl,string dataTextField,string dataValueField = "")
        //{  
        //    ddl.DataSource = reader;

        //    ddl.DataTextField = dataTextField;

        //    if (dataValueField != "")
        //    ddl.DataValueField = dataValueField;

        //    ddl.DataBind();
        //}

        //public void ddl_ReaderRead2(DropDownList ddl,string Column1,string Column2)
        //{
        //    while(reader.Read())
        //    {
        //        ddl.Items.Add(reader[Column1] + "-" + reader[Column2]);
        //    }
        //}

        //public void ddl_DataSet(DropDownList ddl,string tabla, string dataTextField, string dataValueField = "")
        //{
        //    ddl.DataSource = ds.Tables[tabla];

        //    ddl.DataTextField = dataTextField;

        //    if (dataValueField != "")
        //        ddl.DataValueField = dataValueField;

        //    ddl.DataBind();
        //}

        //public void ddl_DataSetRead2(DropDownList ddl, string tabla, string Column1, string Column2)
        //{
        //    foreach(DataRow dr in ds.Tables[tabla].Rows)
        //    {
        //        ddl.Items.Add(dr[Column1] + "-" + dr[Column2]);
        //    } 
        //}

        //public void cargarLabel(Label lbl, string mensaje)
        //{
        //    lbl.Text = mensaje;
        //}

        //public void limpiartxt(TextBox textBox)
        //{
        //    textBox.Text = "";
        //}




        ////////////////////////////////////////////////////


       





    }
}