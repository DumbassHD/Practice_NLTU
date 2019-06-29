using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MyProject1.Models
{
    public class Order                   // про доставку
    {
        public int OrderId { get; set; }

        [Required(ErrorMessage = "Будь-ласка введіть Ім'я та Прізвище")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Ви повинні вказати хотяб одну адресу доставки")]
        public string Line1 { get; set; }
        public string Line2 { get; set; }
        public string Line3 { get; set; }

        [Required(ErrorMessage = "Будь-ласка вкажіть місто, куда потрібно доставити замовлення")]
        public string City { get; set; }
        public bool GiftWrap { get; set; }
        public bool Dispatched { get; set; }
        public virtual List<OrderLine> OrderLines { get; set; }
    }

    public class OrderLine                //про заказаний товар
    {
        public int OrderLineId { get; set; }
        public Order Order { get; set; }
        public Game Game { get; set; }
        public int Quantity { get; set; }
    }
}