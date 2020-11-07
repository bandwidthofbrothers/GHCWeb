using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebApp.Models
{
    public class ProductModel
    {
        public string InsertProduct(MenuItem product)
        {
            try
            {
                group22Entities db = new group22Entities();
                db.MenuItems.Add(product);
                db.SaveChanges();

                return product.MenuItemName + "was successfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        internal List<MenuItem> GetAllMenuItems()
        {
            throw new NotImplementedException();
        }

        public string UpdateProduct(int id, MenuItem product)
        {
            try
            {
                group22Entities db = new group22Entities();

                //Fetch object from db
                MenuItem p = db.MenuItems.Find();

                p.MenuItemName = product.MenuItemName;
                p.MenuItemPrice = product.MenuItemPrice;
                p.MenuItemID = product.MenuItemID;
                p.Category = product.Category;
                p.CurrentMenuItem = product.CurrentMenuItem;

                db.SaveChanges();
                return product.MenuItemName + "was sucessfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProduct(int id)
        {
            try
            {
                group22Entities db = new group22Entities();
                MenuItem product = db.MenuItems.Find(id);

                db.MenuItems.Attach(product);
                db.MenuItems.Remove(product);
                db.SaveChanges();

                return product.MenuItemName + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public MenuItem GetProduct(int id)
        {
            try
            {
                using (group22Entities db = new group22Entities())
                {
                    MenuItem product = db.MenuItems.Find(id);
                    return product;
                }
            }
            catch(Exception)
            {
                return null;
            }
        }

        public List<MenuItem>GetAllProducts()
        {
            try
            {
                using (group22Entities db = new group22Entities())
                {
                    List<MenuItem> products = (from x in db.MenuItems
                                               select x).ToList();
                    return products;
                }
            }
            catch(Exception)
            {
                return null;
            }
        }

        public List<MenuItem>GetProductByType(int typeId)
        {
            try
            {
                using (group22Entities db = new group22Entities())
                {
                    List<MenuItem> products = (from x in db.MenuItems
                                               where x.MenuItemID == typeId 
                                               select x).ToList();
                    return products;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}