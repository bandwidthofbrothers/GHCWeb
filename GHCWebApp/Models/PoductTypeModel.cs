using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NewWebApp.Models
{
    public class ProductTypeModel
    {
        public string InsertProductType(MenuItem productType)
        {
            try
            {
                group22Entities db = new group22Entities();
                db.MenuItems.Add(productType);
                db.SaveChanges();

                return productType.MenuItemName + "was successfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProductType(int id, MenuItem productType)
        {
            try
            {
                group22Entities db = new group22Entities();

                //Fetch object from db
                MenuItem p = db.MenuItems.Find();

                p.MenuItemName = productType.MenuItemName;
                p.MenuItemPrice = productType.MenuItemPrice;
                p.MenuItemID = productType.MenuItemID;
                p.Category = productType.Category;
                p.CurrentMenuItem = productType.CurrentMenuItem;

                db.SaveChanges();
                return productType.MenuItemName + "was sucessfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProductType(int id)
        {
            try
            {
                group22Entities db = new group22Entities();
                MenuItem productType = db.MenuItems.Find(id);

                db.MenuItems.Attach(productType);
                db.MenuItems.Remove(productType);
                db.SaveChanges();

                return productType.MenuItemName + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}