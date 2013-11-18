package beirut;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Maps;

public class DataBase {
	private Map<String,Person> stats;
	private ArrayList<Person> leaders;
	public DataBase(){
		stats = Maps.newHashMap();
		leaders = new ArrayList<Person>();
	}
	public void addPerson(String name){
		stats.put(name, new Person(name));
		leaders.add(stats.get(name));
	}
	public List<Person> getLeaders(){
		Collections.sort(leaders);
		return ImmutableList.copyOf(leaders);
	}
	public Person getPerson(String name){
		if(!stats.containsKey(name)){
			return new Person(name);
		}
		return stats.get(name);
	}
	
}
