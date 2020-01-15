package com.naver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private static final String DRIVER = "oracle.jdbc.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "ca";
	private static final String PASSWORD = "ca";

	public UserDAO() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(DRIVER);
			System.out.println("드라이버 로딩");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete(String did) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "delete from cuser where did=?";
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, did);

//			rs = pstmt.executeQuery();

			int a = pstmt.executeUpdate();
			if(a== 1) {
				System.out.println("삭제되었습니다.");
			}else {
				System.out.println("정보가 없습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public void update(UserDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update cuser set name = ?, age = ?, where did = ?";

		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getAge());
			pstmt.setString(3, dto.getDid());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public UserDTO selectedById(String did) {
		UserDTO dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "select did, name 이름, age 나이 from cuser where did = ?";
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, did);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String name = rs.getString("이름");
				int age = rs.getInt("나이");

				dto = new UserDTO(did, name, age);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	public void insert(UserDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert intto cuser values (?, ?, ?)";
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("커넥션 생성");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getDid());
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getAge());
			
			pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}
}
