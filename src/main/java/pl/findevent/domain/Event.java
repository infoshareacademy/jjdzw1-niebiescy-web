package pl.findevent.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import java.util.Date;

@Getter
@Setter

@Entity
class Event {


    private String name;
    private String description;
    private Date startDate;
    private Date finishDate;
    private String address;
    private Integer organizer;
    private Double price;
    private Integer tickets;

}
