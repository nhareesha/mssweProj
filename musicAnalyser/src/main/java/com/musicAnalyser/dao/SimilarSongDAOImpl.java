/**
 * 
 */
package com.musicAnalyser.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.musicAnalyser.beans.SongDetails;

/**
 * @author Hareesha
 * Feb 23, 2017
 */
public class SimilarSongDAOImpl implements SimilarSongDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	private Session session;
	private Transaction tx;
	
	@Override
	public SongDetails getSongDetails(String track) {
		SongDetails song = new SongDetails();
		try{
			session = sessionFactory.openSession();
			Query q = session.createQuery("Select s.pattern, s.songName from SongDetails s where s.track= :track");
			q.setParameter("track", track);
			List<Object[]> patterns = q.list();
			if(patterns!=null && patterns.size()>0){
				Object[] first = patterns.get(0);
				String pattern = (String)first[0];
				String songName = (String)first[1];
				song.setPattern(pattern);
				song.setSongName(songName);
				song.setTrack(track);
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return song;
	}
	
	/**
	 * This method gets the similar songs depending on the pattern
	 * @param pattern
	 */
	public List<SongDetails> getSimilarSongs(String pattern,String track){
		
		List<SongDetails> songList = new ArrayList<>();
		try{
			session = sessionFactory.openSession();
			Query q = session.createQuery("Select s.track, s.pattern, s.songName from SongDetails s where s.pattern= :pattern");
			q.setParameter("pattern", pattern);
			List<Object[]> list = q.list();
			if(list!=null && list.size() > 0){
				for(Object[] obj : list){
					
						String extractedTrc = (String)obj[0];
						if(extractedTrc.equals(track)){
							continue;//this is to eliminate the current playing song data
						}else{
							SongDetails song = new SongDetails();		
							song.setTrack((String)obj[0]);
							song.setPattern((String)obj[1]);
							song.setSongName((String)obj[2]);
							songList.add(song);
						}
				}
			}else{
				System.out.println("Similar song list is empty or null");
			}
			
		}catch (Exception ex) {
			ex.printStackTrace();
			tx.rollback();
		} finally {
			session.close();
		}
		
		return songList;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
}
