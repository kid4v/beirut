package beirut;

import java.io.Serializable;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.weakref.jmx.com.google.common.collect.ImmutableMap;

import com.google.common.collect.ImmutableSet;

public class Person implements Comparable{
	double winPercent;
	private int shotsFired;
	private int gamesWon;
	private int gamesPlayed;
	private int[] cupPercent;
	private String name;

public Person(String name){
	this.name = name;
	this.winPercent = 0.0;
	this.gamesPlayed = 0;
	this.gamesWon = 0;
	this.cupPercent = new int[20];
	for(int i=0;i<19;i++){
		cupPercent[i]=0;
	}
}
public void updateStats(boolean won, int[] cupsHit,int shots){
	gamesPlayed++;
	if(won){
		gamesWon++;
	}
	winPercent =  ((double)gamesPlayed)/((double)gamesWon);
	for(int i=0;i<cupsHit.length-1;i++){
		cupPercent[i] += cupsHit[i];
	}
	shotsFired += shots;
}

public Map<String,Serializable> getStats(){
	int hits = 0;
	for(int hit:cupPercent){
		hits +=hit;
	}
	Double hitPercent = ((double)hits)/((double)shotsFired);
	return ImmutableMap.of("Win Percentage", winPercent, "Hit Percentage", hitPercent, "Shots Fired", shotsFired,"Cup Stats", cupPercent);
			}
@Override
public int compareTo(Object arg0) {
	Person pers = (Person) arg0;
	if(this.winPercent*this.gamesPlayed>pers.winPercent*pers.gamesPlayed){
		return 1;
	}
	else if(this.winPercent*this.gamesPlayed<pers.winPercent*pers.gamesPlayed){
		return -1;
	}
	return 0;
}
	
}
