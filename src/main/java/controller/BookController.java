package controller;

import entity.Book;
import mapper.BookDao;
import util.Page;

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
        //列表
        else {
            System.out.println("------------"+request.getParameter("start"));
            int start=request.getParameter("start") == null ? 0 : Integer.parseInt(request.getParameter("start"));
            int pageSize=7;//Integer.parseInt(request.getParameter("start"));
            Page page=new Page(start,pageSize,bookDao.count());
            List<Book> bookList =bookDao.query(page.getStart(),page.getPageSize());
            request.setAttribute("page",page);
            request.setAttribute("bookList", bookList);
            request.getRequestDispatcher("/view/book/bookList.jsp").forward(request,response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book book=new Book();
        int id=request.getParameter("id") == "" ? 0 : Integer.parseInt(request.getParameter("id"));
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
