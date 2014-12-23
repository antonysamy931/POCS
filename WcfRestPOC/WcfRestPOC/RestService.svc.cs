using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using WcfRestPOC.Model;

namespace WcfRestPOC
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RestService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select RestService.svc or RestService.svc.cs at the Solution Explorer and start debugging.
    public class RestService : IRestService
    {
        public string Sample()
        {
            return "success";
        }


        public List<Book> GetBookList()
        {
            using (var entities = new RestPOCEntities())
            {
                return entities.Books.ToList();
            }
        }


        public Book GetBook(string Id)
        {
            using (var entities = new RestPOCEntities())
            {
                int bookId = Convert.ToInt32(Id);
                return entities.Books.Where(x => x.Id == bookId).FirstOrDefault();
            }
        }



        public void DeleteBook(string Id)
        {
            using (var entities = new RestPOCEntities())
            {
                int bookId = Convert.ToInt32(Id);
                var oBook = entities.Books.Where(x => x.Id == bookId).FirstOrDefault();
                entities.Books.Remove(oBook);
                entities.SaveChanges();
            }
        }


        public void AddBook(Book book)
        {
            using (var entities = new RestPOCEntities())
            {
                entities.Books.Add(book);
                entities.SaveChanges();
            }
        }


        public void UpdateBook(Book book)
        {
            using (var entities = new RestPOCEntities())
            {
                var oBook = entities.Books.Where(x => x.Id == book.Id).FirstOrDefault();
                oBook.BookName = book.BookName;
                entities.SaveChanges();
            }
        }
    }
}
