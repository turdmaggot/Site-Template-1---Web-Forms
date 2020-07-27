using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Site_Template_1___Web_Forms.models
{
    public class User
    {
        public string UserID { get; set; }
        public string Username { get; set; }
        public string PassHash { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAdd { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }
        public bool IsActive { get; set; }
    }
}