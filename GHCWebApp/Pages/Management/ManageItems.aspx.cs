using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.IO;

namespace GHCWebApp.Pages.Management
{
    public partial class ManageItems : System.Web.UI.Page
    {
        private object ResultFromLabel;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetImages();

                //Check if url contains id parameter
                if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    //FillPage(id);
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            

            //Check if url contains id parameter
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                //id exists --> update exising row
                int id = Convert.ToInt32(Request.QueryString["id"]);

            }
            else
            {
                //id does not exist --> create a new one
                
            }
        }

   //     private void FillPage(int id)
   //     {


            //Fill textboxes
            //txtDesc.Text = product.MenuItemDescription;
           // txtName.Text = product.MenuItemName;
            //txtPrice.Text = product.MenuItemPrice.ToString();

            //Set Dropdownlist values
            //ddlImage.SelectedValue = ddlImage.SelectedValue;
            //ddlCategory.Text = product.Category;
   //     }

        private void GetImages()
        {
            try
            {
                //Get all filepaths
                //string[] images = System.IO.Directory.GetFiles(Server.MapPath("/images/CategoryItemPics"));

                //Get all file names and add them to array list
                //System.Collections.ArrayList imageList = new System.Collections.ArrayList();
                //foreach (string image in images)
                //{
                //    string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                //    imageList.Add(imageName);

                    //Set the arrayList as the dropdownview's data source and refresh
                    //ddlImage.DataSource = imageList;
                    //ddlImage.AppendDataBoundItems = true;
                    //ddlImage.DataBind();
                //}

            }
            catch (Exception e)
            {
                lblResult.Text = e.ToString();
            }
        }

        private MenuItem CreateProduct()
        {
            MenuItem product = new MenuItem();

            //product.MenuItemName = txtName.Text;
            //product.MenuItemPrice = Convert.ToDecimal(txtPrice.Text);
            //product.Category = ddlCategory.Text;
            //product.MenuItemDescription = txtDesc.Text;

            return product;
        }
    }
}