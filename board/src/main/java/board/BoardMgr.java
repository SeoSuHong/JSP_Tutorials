package board;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardMgr {
	private DBConnectionMgr pool;
	private Connection conn;
	private PreparedStatement pstmt;
	ResultSet rs;
	
	private static final String SAVEFOLDER = "D:/SH/jspWorkspace/board/src/main/webapp/fileupload";  // 업로드한 파일 보관장소
	private static final String ENCTYPE = "UTF-8";  // 파일의 타입
	private static final int MAXSIZE = 5*1024*1024;  // 파일의 최대 크기
	
	public BoardMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertBoard(HttpServletRequest req) {
		String sql = null;
		MultipartRequest multi = null;
		int filesize = 0;
		String filename = null;
		
		try {
			conn = pool.getConnection();
			sql = "SELECT MAX(num) FROM board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			int ref = 1;
			if(rs.next()) {
				ref = rs.getInt(1) + 1;  // num의 최댓값 + 1
			}
			
			File file = new File(SAVEFOLDER);
			if(!file.exists()) {  // 파일 존재 여부
				file.mkdirs();  // 파일 생성
			}
			
			// MultipartRequest : 파일 업로드 시 사용(\src\main\webapp\WEB-INF\lib\cos.jar 필요)
			multi = new MultipartRequest(req, SAVEFOLDER, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
			if(multi.getFilesystemName("filename") != null) {
				filename = multi.getFilesystemName("filename");
				filesize = (int)multi.getFile("filename").length();
			}
			
			sql = "INSERT INTO board VALUES(?, ?, ?, ?, 0, ?, 0, SYSDATE, ?, ?, 0, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ref);
			pstmt.setString(2, multi.getParameter("name"));
			pstmt.setString(3, multi.getParameter("subject"));
			pstmt.setString(4, multi.getParameter("content"));
			pstmt.setInt(5, ref);
			pstmt.setString(6, multi.getParameter("pass"));
			pstmt.setString(7, multi.getParameter("ip"));
			pstmt.setString(8, filename);
			pstmt.setInt(9, filesize);
			pstmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("insertBoard Error : " + e.getMessage());
		} finally {
			pool.freeConnection(conn, pstmt, rs);
		}
	}
	
	// 게시물 총 갯수
	public int getTotalCount(String keyField, String keyWord) {
		String sql = null;
		int totalCount = 0;
		
		try {
			conn = pool.getConnection();
			if(keyWord.equals("null") || keyWord.equals("")) {
				sql = "SELECT COUNT(num) FROM board";
				pstmt = conn.prepareStatement(sql);
			} else {
				sql = "SELECT COUNT(num) FROM board WHERE " + keyField + " LIKE ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
			}
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch(Exception e) {
			System.out.println("getTotalCount Error : " + e.getMessage());
		} finally {
			pool.freeConnection(conn, pstmt, rs);
		}
		return totalCount;
	}
	
	public Vector<BoardBean> getBoardList(String keyField, String keyWord, int start, int end) {
		String sql = null;
		Vector<BoardBean> vlist = new Vector<BoardBean>();
		
		try {
			conn = pool.getConnection();
			if(keyWord.equals("null") || keyWord.equals("")) {
				sql = "SELECT * FROM (SELECT * FROM board ORDER BY ref DESC, pos) WHERE ROWNUM >= ? AND ROWNUM <= ?";

				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			} else {
				sql = "SELECT * FROM (SELECT * FROM board WHERE " + keyField + " LIKE ? ORDER BY ref DESC, pos) WHERE ROWNUM >= ? AND ROWNUM <= ?";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
			}
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardBean bean = new BoardBean();
				bean.setNum(rs.getInt("num"));
				bean.setSubject(rs.getString("subject"));
				bean.setName(rs.getString("name"));
				bean.setPos(rs.getInt("pos"));
				bean.setRef(rs.getInt("ref"));
				bean.setDepth(rs.getInt("depth"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setCount(rs.getInt("count"));
				
				vlist.add(bean);
			}
		} catch(Exception e) {
			System.out.println("getBoardList Error : " + e.getMessage());
		} finally {
			pool.freeConnection(conn, pstmt, rs);
		}
		return vlist;
	}
	
	// 조회수 증가
	public void upCount(int num) {
		String sql = null;
		
		try {
			conn = pool.getConnection();
			sql = "UPDATE board SET count = count + 1 WHERE num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("upCount Error : " + e.getMessage());
		} finally {
			pool.freeConnection(conn, pstmt);
		}
	}
	
	// 게시물 얻어오기
	public BoardBean getBoard(int num) {
		String sql = null;
		BoardBean bean = new BoardBean();
		try {
			conn = pool.getConnection();
			sql = "SELECT * FROM board WHERE num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
				bean.setSubject(rs.getString("Subject"));
				bean.setContent(rs.getString("content"));
				bean.setPos(rs.getInt("pos"));
				bean.setRef(rs.getInt("ref"));
				bean.setDepth(rs.getInt("depth"));
				bean.setRegdate(rs.getString("regdate"));
				bean.setPass(rs.getString("pass"));
				bean.setIp(rs.getString("ip"));
				bean.setCount(rs.getInt("count"));
				bean.setFilename(rs.getString("filename"));
				bean.setFilesize(rs.getInt("num"));
			}
			
		} catch(Exception e) {
			System.out.println("getBoard Error : " + e.getMessage());
		} finally {
			pool.freeConnection(conn, pstmt);
		}
		return bean;
	}
	
	// 파일 다운로드
	public void download(HttpServletRequest req, HttpServletResponse res, JspWriter out, PageContext pageContext) {
		try {
			String filename = req.getParameter("filename");			
			File file = new File(UtilMgr.con(SAVEFOLDER + File.separator + filename));
			byte b[] = new byte[(int)file.length()];
			res.setHeader("Accept-Range", "bytes");
			String strClient = req.getHeader("User-Agent");
			if(strClient.indexOf("MSIE6.0") != -1) {
				res.setContentType("application/smnet; charset=UTF-8");
				res.setHeader("Content-Disposition", "filename=" + filename + ";");
			} else {
				res.setContentType("application/smnet; charset=UTF-8");
				res.setHeader("Content-Disposition", "attachment; filename=" + filename + ";");
			}
			out.clear();
			out = pageContext.pushBody();
			if(file.isFile()) {
				BufferedInputStream fin = new BufferedInputStream(new FileInputStream(file));
				BufferedOutputStream outs = new BufferedOutputStream(res.getOutputStream());
				int read = 0;
				while((read = fin.read(b)) != -1) {
					outs.write(b, 0, read);
				}
				outs.close();
				fin.close();
			}
		} catch(Exception e) {
			System.out.println("download Error : " + e.getMessage());
		}
	}
	
	// 파일 삭제
	public void deleteBoard(int num) {
		String sql = null;
		
		try {
			conn = pool.getConnection();
			sql = "SELECT filename FROM board WHERE num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeQuery();
			
			if(rs.next() && rs.getString(1) == null) {
				File file = new File(SAVEFOLDER + "/" + rs.getString(1));
				if (file.exists())
					UtilMgr.delete(SAVEFOLDER + "/" + rs.getString(1));
			}
			sql = "DELETE FROM board WHERE num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("deleteBoard Error : " + e.getMessage());
		} finally {
			pool.freeConnection(conn, pstmt);
		}
	}
}








