using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using WcfRestPOC.MVC.Client.RestPOC;
using System.Text;
using WcfRestPOC;
using System.ServiceModel.Web;

namespace WcfRestPOC.MVC.Client.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            /*IRestService service = new RestServiceClient();
            var sample = service.Sample();*/            

            var factory = new WebChannelFactory<IRestService>(new Uri("http://localhost:51668/RestService.svc"));
            IRestService service = factory.CreateChannel();            
            dynamic books = service.GetBookList();

            List<Models.Book> data = new List<Models.Book>();

            HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/Book") as HttpWebRequest;
            request.KeepAlive = false;
            request.Method = "GET";
            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            StreamReader reader = new StreamReader(response.GetResponseStream());
            var message = reader.ReadToEnd();
            if (!string.IsNullOrEmpty(message))
            {
                data = JsonConvert.DeserializeObject<List<Models.Book>>(message);
            }
            return View(data);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Models.Book book)
        {
            if (ModelState.IsValid)
            {
                var postData = JsonConvert.SerializeObject(book);
                var data = Encoding.ASCII.GetBytes(postData);
                HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/AddBook") as HttpWebRequest;
                request.Method = "POST";
                request.ContentType = "application/json";
                request.ContentLength = data.Length;

                using (var stream = request.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
                var response = (HttpWebResponse)request.GetResponse();
                return RedirectToAction("Index");
            }
            return View(book);
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            Models.Book data = new Models.Book();

            HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/Book/" + id) as HttpWebRequest;
            request.KeepAlive = false;
            request.Method = "GET";
            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            StreamReader reader = new StreamReader(response.GetResponseStream());
            var message = reader.ReadToEnd();
            if (!string.IsNullOrEmpty(message))
            {
                data = JsonConvert.DeserializeObject<Models.Book>(message);
            }
            return View(data);
        }

        [HttpPost]
        public ActionResult Edit(Models.Book book)
        {
            if (ModelState.IsValid)
            {
                var postData = JsonConvert.SerializeObject(book);
                var data = Encoding.ASCII.GetBytes(postData);
                HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/UpdateBook") as HttpWebRequest;
                request.Method = "PUT";
                request.ContentType = "application/json";
                request.ContentLength = data.Length;

                using (var stream = request.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
                var response = (HttpWebResponse)request.GetResponse();
                return RedirectToAction("Index");
            }
            return View(book);
        }

        public ActionResult Details(int id)
        {
            Models.Book data = new Models.Book();

            HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/Book/"+id) as HttpWebRequest;
            request.KeepAlive = false;
            request.Method = "GET";
            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            StreamReader reader = new StreamReader(response.GetResponseStream());
            var message = reader.ReadToEnd();
            if (!string.IsNullOrEmpty(message))
            {
                data = JsonConvert.DeserializeObject<Models.Book>(message);
            }
            return View(data);
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            Models.Book data = new Models.Book();

            HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/Book/" + id) as HttpWebRequest;
            request.KeepAlive = false;
            request.Method = "GET";
            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            StreamReader reader = new StreamReader(response.GetResponseStream());
            var message = reader.ReadToEnd();
            if (!string.IsNullOrEmpty(message))
            {
                data = JsonConvert.DeserializeObject<Models.Book>(message);
            }
            return View(data);
        }

        [HttpPost]
        public ActionResult Delete(Models.Book book)
        {
            
            HttpWebRequest request = WebRequest.Create("http://localhost:51668/RestService.svc/Book/Delete/" + book.Id) as HttpWebRequest;
            request.KeepAlive = false;
            request.Method = "DELETE";
            HttpWebResponse response = request.GetResponse() as HttpWebResponse;
            return RedirectToAction("Index");
        }

	}
}