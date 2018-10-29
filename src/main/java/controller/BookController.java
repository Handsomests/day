package controller;

import entity.Book;
import mapper.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/book")
public class BookController extends HttpServlet {
    private  static  BookDao bookDao=new BookDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        //编辑
        if("edit".equals(action)){
            int id = Integer.parseInt(request.getParameter("id"));
            Book book=bookDao.queryById(id);
            System.out.println(book.toString());
            request.setAttribute("book",book);
            request.getRequestDispatcher("/view/book/addOrEdit.jsp").forward(request,response);
        }
        //删除
        else if("delete".equals(action)){
            int id = Integer.parseInt(request.getParameter("id"));
            bookDao.deleteBooks(id);
            response.sendRedirect("/book");
        }
        else {
            List<Book> bookList =bookDao.query();
            request.setAttribute("bookList", bookList);
            request.getRequestDispatcher("/view/book/bookList.jsp").forward(request,response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book book=new Book();
        int id=0;
        if(request.getParameter("id")!=""){
            id=Integer.parseInt(request.getParameter("id"));

            System.out.println(id+"aaaaaaaaaaaaa");
        }
        book.setName(request.getParameter("name"));
        book.setPrice(request.getParameter("price"));
        book.setNumber(Integer.parseInt(request.getParameter("number")));
        book.setDescription(request.getParameter("description"));
        if (id>0){
            book.setId(id);
            bookDao.updateBooks(book);
        }
        else bookDao.addBooks(book);
        response.sendRedirect("/book");
    }
}
