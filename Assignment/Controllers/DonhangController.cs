using Assignment.Models;
using Assignment.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Assignment.Controllers
{
    public class DonhangController : BaseController
    {
        private IDonhangSvc _donhangSvc;

        public DonhangController(IDonhangSvc donhangSvc)
        {
            _donhangSvc = donhangSvc;
        }

        // GET: DonhangController
        public ActionResult Index()
        {
            return View(_donhangSvc.GetDonhangAll());
        }

        // GET: DonhangController/Details/5
        public ActionResult Details(int id)
        {
            return View(_donhangSvc.GetDonhang(id));
        }

        // GET: DonhangController/Edit/5
        public ActionResult Edit(int id)
        {
            var donhang = _donhangSvc.GetDonhang(id);
            return View(donhang);
        }

        // POST: DonhangController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, Donhang donhang)
        {
            try
            {
                donhang.Khachhang = null;
                _donhangSvc.EditDonhang(id, donhang);
                return RedirectToAction(nameof(Details), new { id = donhang.DonhangID });
            }
            catch
            {
                return View();
            }
        }
    }
}
