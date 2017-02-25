/**
 * 
 */
package com.musicAnalyser.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.musicAnalyser.beans.SongDetails;
import com.musicAnalyser.dao.SimilarSongDAOImpl;
import com.musicAnalyser.helper.StringHelper;

/**
 * @author Hareesha
 * Feb 24, 2017
 */
public class SimilarSongsService {
	
	@Autowired
	private SimilarSongDAOImpl songdao;
	
	/**
	 * This is the service method used to get the similar songlist from the database.
	 * @param track
	 */
	public List<SongDetails> getSimilarSongsList(String track){
		
		List<SongDetails> songList=null;
		//song details for the current song
		SongDetails dtls =getCurrentSongDtls(track);
		if(dtls!=null){
			//get similar songs based on the current pattern
			songList = songdao.getSimilarSongs(dtls.getPattern(),dtls.getTrack());
		}
		return songList;
	}
	
	public SongDetails getCurrentSongDtls(String track){
		
		String trc = StringHelper.trimCharacter(track);
		//song details for the current song
		SongDetails dtls = songdao.getSongDetails(trc);
		
		return dtls;
	}
}
