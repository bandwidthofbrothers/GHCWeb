using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NewWebApp.Models
{
    public class Cart
    {
        public string InsertProduct(CustomerOrder cart)
        {
            try
            {
                group22Entities db = new group22Entities();
                db.CustomerOrders.Add(cart);
                db.SaveChanges();

                return cart.CustomerOrderID + "was successfully inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProduct(int id, CustomerOrder cart)
        {
            try
            {
                group22Entities db = new group22Entities();

                //Fetch object from db
                CustomerOrder p = db.CustomerOrders.Find();

                p.OrderDate = cart.OrderDate;
                p.CustomerID = cart.CustomerID;
                p.Quantity = cart.Quantity;
                p.MenuItemID = cart.MenuItemID;
                p.SaleID = cart.SaleID;
                p.OrderStatus = cart.OrderStatus;

                db.SaveChanges();
                return cart.CustomerOrderID + "was sucessfully updated";
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
                CustomerOrder cart = db.CustomerOrders.Find(id);

                db.CustomerOrders.Attach(cart);
                db.CustomerOrders.Remove(cart);
                db.SaveChanges();

                return cart.CustomerOrderID + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}