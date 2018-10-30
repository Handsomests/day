package mapper;

import entity.Book;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDao {



    public int count() {
        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;
        int count=0;
        try {
            conn = DBUtil.getConnection();
            String sql = " select count(*) from book";
            ptmt = conn.prepareStatement(sql);
            rs = ptmt.executeQuery();
            while (rs.next()) {
                count=rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ptmt != null) {
                    ptmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return count;
    }
    /**
     * 查询全部
     *
     * @return
     * @throws SQLException
     */
    public List<Book> query(int start,int pageSize) {
        List<Book> bookList = new ArrayList<Book>();
        // 获得数据库连接
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement ptmt = null;
        try {
            conn = DBUtil.getConnection();

            String sql="select * from book limit ?,?";
            // 通过数据库的连接操作数据库，实现增删改查
            ptmt = conn.prepareStatement(sql.toString());
            ptmt.setInt(1, start);
            ptmt.setInt(2, pageSize);
            rs = ptmt.executeQuery();
            Book book = null;
            while (rs.next()) {
                book = new Book();
                book.setId(rs.getInt("Id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getString("price"));
                book.setNumber(rs.getInt("number"));
                book.setDescription(rs.getString("description"));
                bookList.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ptmt != null) {
                    ptmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return bookList;
    }

    /**
     * 查询单个
     *
     * @return
     * @throws SQLException
     */
    public Book queryById(Integer id) {
        Book book = null;
        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;

        try {
            conn = DBUtil.getConnection();
            String sql = " select * from book  where id=? ";
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, id);
            rs = ptmt.executeQuery();
            while (rs.next()) {
                book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getString("price"));
                book.setNumber(rs.getInt("number"));
                book.setDescription(rs.getString("description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ptmt != null) {
                    ptmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return book;
    }

    /**
     * 添加
     *
     * @throws SQLException
     */
    public void addBooks(Book book) {
        // 获得数据库连接
        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "insert into book(name,price,number,description) values(?,?,?,?)";
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1, book.getName());
            ptmt.setString(2, book.getPrice());
            ptmt.setInt(3,book.getNumber());
            ptmt.setString(4,book.getDescription());
            ptmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ptmt != null) {
                    ptmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    /**
     * 修改资料
     *
     * @throws SQLException
     */
    public void updateBooks(Book book) {
        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "update book set name=?,price=? ,number=?,description=? where id=?";
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1, book.getName());
            ptmt.setString(2, book.getPrice());
            ptmt.setInt(3,book.getNumber());
            ptmt.setString(4,book.getDescription());
            ptmt.setInt(5,book.getId());
            ptmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ptmt != null) {
                    ptmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 删除
     *
     * @throws SQLException
     */
    public void deleteBooks(Integer id) {
        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "delete from book where id=?";
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, id);
            ptmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ptmt != null) {
                    ptmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
