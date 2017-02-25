/**
 * 
 */
package com.musicAnalyser.dao;

import java.util.List;

import com.musicAnalyser.beans.SongDetails;

/**
 * @author Hareesha
 * Feb 23, 2017
 */
public interface SimilarSongDAO {
	
	public SongDetails getSongDetails(String track);
	public List<SongDetails> getSimilarSongs(String pattern,String track);
}
