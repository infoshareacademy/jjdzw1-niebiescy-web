package pl.findevent;

import niebiescyapp.MeteoDataWriter;
import niebiescyapp.MeteoStation;
import pl.findevent.dao.UsersDaoBean;
import pl.findevent.domain.User;


import javax.inject.Inject;

public class Main {

    public static void main(String[] args) {


        UsersDaoBean usersDaoBean = new UsersDaoBean();

        User user = new User();


        user = usersDaoBean.read(1);


        MeteoDataWriter meteoDataWriter = new MeteoDataWriter();
        MeteoStation meteoStation = meteoDataWriter.getWeatherByCity("Hel");
        System.out.println("Pogoda dla miasta: "+meteoStation.getStation()+" temperatura: "+meteoStation.getTemperature());


    }

}
