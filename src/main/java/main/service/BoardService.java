package main.service;

import java.util.List;

public interface BoardService {
		
			public String insertBoard( BoardVO vo ) throws Exception;
			
			//  게시판 글 목록
			public List<?> selectBoardList( BoardVO vo ) throws Exception;
			
			// Total 글 개수 얻기
			public int selectBoardTotal( BoardVO vo ) throws Exception;
			
			// 게시판 글 상세보기
			public BoardVO selectBoardDetail( int unq ) throws Exception; 
			
			// 조회수 증가
			public int updateBoardHits( int unq ) throws Exception;
			
			// 게시판 글 수정하기
			public int updateBoard( BoardVO vo ) throws Exception;
			
			// 암호확인
			public int selectBoardPass( BoardVO vo ) throws Exception;
			
			// 게시판 글 삭제하기
			public int deleteBoard( BoardVO vo ) throws Exception;
			
}
