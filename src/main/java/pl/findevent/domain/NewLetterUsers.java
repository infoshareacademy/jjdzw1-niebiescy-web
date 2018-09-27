package pl.findevent.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "newsletter")
@Getter
@Setter
@NoArgsConstructor

public class NewLetterUsers
{
    
    @Id
    private double id;
    private String email;
    
}
