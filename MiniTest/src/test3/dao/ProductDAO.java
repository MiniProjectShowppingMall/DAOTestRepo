package test3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import test3.dto.ProductDTO;

public class ProductDAO{
	private ArrayList<ProductDTO> prodlist;
	private static ProductDAO instance;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	private Context init;
	
	
	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public PreparedStatement getPstmt() {
		return pstmt;
	}

	public void setPstmt(PreparedStatement pstmt) {
		this.pstmt = pstmt;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}

	public Context getInit() {
		return init;
	}

	public void setInit(Context init) {
		this.init = init;
	}

	public DataSource getDs() {
		return ds;
	}

	public void setDs(DataSource ds) {
		this.ds = ds;
	}

	private ProductDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			System.err.println("dataSource 불러오기 예외 발생 : " + e.getMessage());
		}
	}
	
	public static ProductDAO getInstance() {
		if(instance == null) {
			instance = new ProductDAO();
		}
		return instance;
	}
	
	
	
	public void setProdlist(ArrayList<ProductDTO> prodlist) {
		this.prodlist = prodlist;
	}

	public ArrayList<ProductDTO> getProdlist() {
		return prodlist;
	}


	// 전체목록
	public ArrayList<ProductDTO> selectAll(){
		prodlist = new ArrayList<ProductDTO>();
		String sql = "select * from product order by prodid";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProdid(rs.getInt("prodid"));
				dto.setProdname(rs.getString("prodname"));
				dto.setBrand(rs.getString("brand"));
				dto.setCateid(rs.getInt("cateid"));
				dto.setQuantity(rs.getInt("quantity"));
				dto.setSales(rs.getInt("sales"));
				dto.setPrice(rs.getInt("price"));
				dto.setDiscount(rs.getInt("discount"));
				dto.setGrade(rs.getDouble("grade"));
				dto.setProdinfo(rs.getString("prodinfo"));
				dto.setProdimage(rs.getString("prodimage"));
				
				prodlist.add(dto);
			}
		} catch (SQLException e) {
			System.out.println("selectAll에러"+e.getMessage());
		} finally {
			close();
		}
		return prodlist;
	}
	
	// 카테고리별 목록
		public ArrayList<ProductDTO> selectAll(int cateid){
			prodlist = new ArrayList<ProductDTO>();
			String sql = "select * from product where cateid = ? order by prodid";
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, cateid);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					ProductDTO dto = new ProductDTO();
					dto.setProdid(rs.getInt("prodid"));
					dto.setProdname(rs.getString("prodname"));
					dto.setBrand(rs.getString("brand"));
					dto.setCateid(rs.getInt("cateid"));
					dto.setQuantity(rs.getInt("quantity"));
					dto.setSales(rs.getInt("sales"));
					dto.setPrice(rs.getInt("price"));
					dto.setDiscount(rs.getInt("discount"));
					dto.setGrade(rs.getDouble("grade"));
					dto.setProdinfo(rs.getString("prodinfo"));
					dto.setProdimage(rs.getString("prodimage"));
					
					prodlist.add(dto);
				}
			} catch (SQLException e) {
				System.out.println("selectAll에러"+e.getMessage());
			} finally {
				close();
			}
			return prodlist;
		}
		
		// 상세보기
		public ProductDTO selectOne(int prodid){
			String sql = "select * from product order by prodid where prodid= ?";
			try {
				setConn(getDs().getConnection());
				setPstmt(getConn().prepareStatement(sql));
				getPstmt().setInt(1, prodid);
				setRs(getPstmt().executeQuery());
				while(getRs().next()) {
					ProductDTO dto = new ProductDTO();
					dto.setBrand(getRs().getString("brand"));
					dto.setCateid(getRs().getInt("cateid"));
					dto.setDiscount(getRs().getInt("discount"));
					dto.setGrade(getRs().getDouble("grade"));
					dto.setPrice(getRs().getInt("price"));
					dto.setProdid(getRs().getInt("prodid"));
					dto.setProdname(getRs().getString("prodname"));
					dto.setQuantity(getRs().getInt("quantity"));
					dto.setSales(getRs().getInt("sales"));
					
					return dto;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return null;
		}
		
		public String categoryName(int cateid) {
			String sql = "select catename from category where cateid=?";
			try {
				conn = ds.getConnection();
				pstmt= conn.prepareStatement(sql);
				pstmt.setInt(1, cateid);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					return rs.getString("catename");
				}
			} catch (SQLException e) {
				System.err.println("카테고리에러"+e.getMessage());
			}finally {
				close();
			}
			return null;
		}
		
		
		public void close() {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
			}
		}
}
