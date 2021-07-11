using Assignment.Constants;
using Assignment.Models;
using Assignment.Models.ViewModels;
using Assignment.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Assignment.Controllers
{
    public class AdminController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnvironment;
        private INguoidungSvc _nguoidungSvc;

        public AdminController(IWebHostEnvironment webHostEnvironment, INguoidungSvc nguoidungSvc)
        {
            _webHostEnvironment = webHostEnvironment;
            _nguoidungSvc = nguoidungSvc;
        }

        public ActionResult Index()
        {
            return View();
        }
        public IActionResult Login(string returnUrl)
        {
            string userName = HttpContext.Session.GetString(SessionKey.Nguoidung.UserName);
            if (userName != null && userName != "") //da co session
            {
                return RedirectToAction("Index", "Admin");
            }

            #region Hiểu thị Login
            ViewLogin login = new ViewLogin();
            login.ReturnUrl = returnUrl;
            return View(login);
            #endregion
        }

        [HttpPost]        
        [ValidateAntiForgeryToken]
        public IActionResult Login(ViewLogin viewLogin)
        {
            if (ModelState.IsValid)
            {
                Nguoidung nguoidung = _nguoidungSvc.Login(viewLogin);
                if (nguoidung != null)
                {
                    HttpContext.Session.SetString(SessionKey.Nguoidung.UserName, nguoidung.UserName);
                    HttpContext.Session.SetString(SessionKey.Nguoidung.FullName, nguoidung.FullName);
                    HttpContext.Session.SetString(SessionKey.Nguoidung.NguoidungContext, 
                        JsonConvert.SerializeObject(nguoidung));

                    return RedirectToAction(nameof(HomeController.Index), "Admin");
                }                
            }
            return View(viewLogin);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Logout()
        {
            HttpContext.Session.Remove(SessionKey.Nguoidung.UserName);
            HttpContext.Session.Remove(SessionKey.Nguoidung.FullName);
            HttpContext.Session.Remove(SessionKey.Nguoidung.NguoidungContext);
            return RedirectToAction(nameof(HomeController.Index), "Admin");
        }
    }
}
