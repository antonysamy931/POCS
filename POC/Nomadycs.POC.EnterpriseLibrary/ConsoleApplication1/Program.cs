using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        public static void Main(string[] args)
        {
            EmployeeDL empDL = new EmployeeDL();
            Common common = new Common();
            Top:            
            Console.WriteLine("1. List");
            Console.WriteLine("2. Detail");
            Console.WriteLine("3. Create");
            Console.WriteLine("4. Update");
            Console.WriteLine("5. Delete");
            Console.WriteLine("6. Clear console");
            Console.WriteLine("7. Exit");
            Console.WriteLine("Enter your choice");
            int Choice = Convert.ToInt32(Console.ReadLine());
            switch (Choice)
            {
                case 1:                    
                    common.EmpList();
                    goto Top;                   

                case 2:                    
                    common.GetEmployee();
                    goto Top;                    
                case 3:
                    common.CreateEmployee();
                    common.EmpList();
                    goto Top;                    
                case 4:
                    common.UpdateEmployee();
                    common.EmpList();
                    goto Top;
                case 5:
                    common.DeleteEmployee();
                    common.EmpList();
                    goto Top;
                case 6:
                    Console.Clear();
                    goto Top;
                case 7:
                    Console.WriteLine("bye");
                    break;

            }

            Console.ReadLine();
        }               

    }

    public class Common
    {
        EmployeeDL empDL = new EmployeeDL();
        public void EmpList()
        {            
            var employees = empDL.GetEmployees();
            if (employees.Count > 0)
            {
                var empListtable = new ConsoleTable("Id", "Name", "Age", "Country");
                foreach (var item in employees)
                {
                    empListtable.AddRow(item.Id, item.Name, item.Age, item.Country);
                }
                empListtable.Write();
            }
            else
            {
                Console.WriteLine("No records found");
            }
            Console.WriteLine("*********************************************************");
        }

        public void GetEmployee()
        {
            Console.WriteLine("Enter employee id");
            int empId = Convert.ToInt32(Console.ReadLine());
            var employee = empDL.GetEmployee(empId);
            if (employee != null)
            {
                var emptable = new ConsoleTable("Id", "Name", "Age", "Country");
                emptable.AddRow(employee.Id, employee.Name, employee.Age, employee.Country);
                emptable.Write();
            }
            else
            {
                Console.WriteLine("No records found");
            }
            Console.WriteLine("*********************************************************");
        }

        public void CreateEmployee()
        {
            Employee createEmployee = new Employee();
            Console.WriteLine("Enter employee name");
            createEmployee.Name = Console.ReadLine();
            Console.WriteLine("Enter employee age");
            createEmployee.Age = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter employee country");
            createEmployee.Country = Console.ReadLine();
            empDL.Create(createEmployee);
        }

        public void UpdateEmployee()
        {
            Console.WriteLine("Enter employee id");
            int empId = Convert.ToInt32(Console.ReadLine());
            Employee employee = empDL.GetEmployee(empId);
            if (employee != null)
            {
                var emptable = new ConsoleTable("Id", "Name", "Age", "Country");
                emptable.AddRow(employee.Id, employee.Name, employee.Age, employee.Country);
                emptable.Write();
            }
            else
            {
                Console.WriteLine("No records found");
            }
            Console.WriteLine("Enter update country name");
            employee.Country = Console.ReadLine();
            empDL.Update(employee);
        }

        public void DeleteEmployee()
        {
            Console.WriteLine("Enter employee id");
            int empId = Convert.ToInt32(Console.ReadLine());
            Employee employee = empDL.GetEmployee(empId);
            if (employee != null)
            {
                var emptable = new ConsoleTable("Id", "Name", "Age", "Country");
                emptable.AddRow(employee.Id, employee.Name, employee.Age, employee.Country);
                emptable.Write();
            }
            else
            {
                Console.WriteLine("No records found");
            }
            Console.WriteLine("Are you sure delete this record [yes/no]?");
            var input = Console.ReadLine();
            if (input.ToLower() == "yes") {
                empDL.Delete(empId);
            }
        }
    }
}
