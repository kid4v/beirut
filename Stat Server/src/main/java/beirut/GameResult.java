package beirut;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class GameResult {

    @JsonCreator
	public GameResult(@JsonProperty("winner")String[] winners, @JsonProperty("Player1Stats") );
}
