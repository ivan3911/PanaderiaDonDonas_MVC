using Panaderia_DonDonas.Models;
using Panaderia_DonDonas.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Mvc;

namespace Panaderia_DonDonas.Controllers
{
    public class OrderController : Controller
    {

        private static string connection = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

        private List<Order> OrdersList = new List<Order>();

        DB_DonDonasEntities2 contexto = new DB_DonDonasEntities2();

        // GET: Order
        public ActionResult RecordSale()
        {
            List<DonutsViewModel> lst = null;

            using (Models.DB_DonDonasEntities2 db = new Models.DB_DonDonasEntities2())
            {
                lst =
                   (from d in db.Donuts
                    select new DonutsViewModel
                    {
                        Id = d.IdDonuts,
                        nameDonut = d.donutFlavor
                    }).ToList();
            }

            List<SelectListItem> items = lst.ConvertAll(d =>
            {
                return new SelectListItem()
                {
                    Text = d.nameDonut,
                    Value = d.Id.ToString(),
                    Selected = false
                };
            });

            ViewBag.items = items;
            return View();
        }

        [HttpPost]
        public ActionResult RecordSale(Order order)
        {
            using (SqlConnection oconnection = new SqlConnection(connection))
            {
                SqlCommand cmd = new SqlCommand("sp_InsOrder", oconnection);
                cmd.Parameters.AddWithValue("Name", order.Name);
                cmd.Parameters.AddWithValue("Address", order.Address);
                cmd.Parameters.AddWithValue("ID_DonutFlavor", (int)order.EDonutFlavor);
                cmd.Parameters.AddWithValue("Number", (int)order.Number);

                cmd.CommandType = CommandType.StoredProcedure;
                oconnection.Open();

                cmd.ExecuteNonQuery();
            }

            return RedirectToAction("AllSales", "Order");
        }


        public ActionResult AllSales()
        {
            OrdersList = new List<Order>();
            DataSet ds = new DataSet();

            using (SqlConnection oconnection = new SqlConnection(connection))
            {
                SqlCommand cmd = new SqlCommand("sp_GetAllSales", oconnection);
                cmd.CommandType = CommandType.StoredProcedure;
                oconnection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(ds);

                for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                {
                    Order neworder = new Order();
                    neworder.IdOrder = Convert.ToInt32(ds.Tables[0].Rows[i][0].ToString());
                    neworder.Name = ds.Tables[0].Rows[i][1].ToString();
                    neworder.Address = ds.Tables[0].Rows[i][2].ToString();
                    neworder.Number = Convert.ToInt32(ds.Tables[0].Rows[i][3].ToString());
                    neworder.DonutFlavor = ds.Tables[0].Rows[i][4].ToString();

                    OrdersList.Add(neworder);

                }
            }


            return View(OrdersList);
        }

        public ActionResult SalesByType()
        {
            List<DonutsViewModel> lst = null;
            OrdersList = new List<Order>();

            using (Models.DB_DonDonasEntities2 db = new Models.DB_DonDonasEntities2())
            {
                lst =
                   (from d in db.Donuts
                    select new DonutsViewModel
                    {
                        Id = d.IdDonuts,
                        nameDonut = d.donutFlavor
                    }).ToList();
            }

            List<SelectListItem> items = lst.ConvertAll(d =>
            {
                return new SelectListItem()
                {
                    Text = d.nameDonut,
                    Value = d.Id.ToString(),
                    Selected = false
                };
            });

            ViewBag.items = items;

            return View(OrdersList);
        }


        [HttpPost]
        public ActionResult SalesByType(int? TipoDona)
        {
            List<DonutsViewModel> lst = null;
            OrdersList = new List<Order>();


                using (Models.DB_DonDonasEntities2 db = new Models.DB_DonDonasEntities2())
                {
                    lst =
                       (from d in db.Donuts
                        select new DonutsViewModel
                        {
                            Id = d.IdDonuts,
                            nameDonut = d.donutFlavor
                        }).ToList();
                }

                List<SelectListItem> items = lst.ConvertAll(d =>
                {
                    return new SelectListItem()
                    {
                        Text = d.nameDonut,
                        Value = d.Id.ToString(),
                        Selected = false
                    };
                });

                ViewBag.items = items;


                var data = contexto.Donuts_Orders
                                .Where(p => p.NumberOfDonuts > 10 && p.IdDonuts == TipoDona).ToList();

                foreach (var d in data)
                {

                    Order neworder = new Order();
                    neworder.IdOrder = d.IdOrder;
                    neworder.Name = d.Orders.Name;
                    neworder.Address = d.Orders.Address;
                    neworder.Number = d.NumberOfDonuts;
                    neworder.DonutFlavor = d.Donuts.donutFlavor;

                    OrdersList.Add(neworder);
                }

            return View(OrdersList);
        }

    }
}