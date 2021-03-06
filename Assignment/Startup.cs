using Assignment.Helpers;
using Assignment.Models;
using Assignment.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Assignment
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews();

            services.AddDistributedMemoryCache(); // dang ky luu cache trong bo nho
            services.AddSession(option => { option.IdleTimeout = TimeSpan.FromMinutes(30); }); //keo dai 30p

            services.AddDbContext<DataContext>(options =>
            options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));

            services.AddTransient<IMahoaHelper, MahoaHelper>();

            services.AddTransient<IUploadHelper, UploadHelper>();

            services.AddTransient<IMonAnSvc, MonAnSvc>();

            services.AddTransient<INguoidungSvc, NguoidungSvc>();
            services.AddTransient<IKhachhangSvc, KhachhangSvc>();


            services.AddTransient<IDonhangSvc, DonhangSvc>();

            services.AddTransient<IDonhangChitietSvc, DonhangChitietSvc>();

            services.AddRazorPages().AddRazorRuntimeCompilation();

        }

        // This method gets called by the runtime. Use this method to configu   re the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseSession();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
