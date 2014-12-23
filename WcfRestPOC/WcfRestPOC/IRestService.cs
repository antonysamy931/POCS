using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using WcfRestPOC.Model;

namespace WcfRestPOC
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IRestService" in both code and config file together.
    [ServiceContract]
    public interface IRestService
    {
        [WebInvoke(Method="GET",ResponseFormat=WebMessageFormat.Json,UriTemplate="Sample")]        
        string Sample();        

        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "Book")]
        List<Book> GetBookList();

        [WebInvoke(Method = "POST", ResponseFormat = WebMessageFormat.Json, UriTemplate = "AddBook", RequestFormat = WebMessageFormat.Json)]
        void AddBook(Book book);

        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "Book/{Id}")]
        Book GetBook(string Id);

        [WebInvoke(Method = "PUT", ResponseFormat = WebMessageFormat.Json, UriTemplate = "UpdateBook", RequestFormat = WebMessageFormat.Json)]
        void UpdateBook(Book book);

        [WebInvoke(Method = "DELETE", ResponseFormat = WebMessageFormat.Json, UriTemplate = "Book/Delete/{Id}")]
        void DeleteBook(string Id);
    }
}
