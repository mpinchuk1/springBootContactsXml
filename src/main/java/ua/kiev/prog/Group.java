package ua.kiev.prog;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;
import java.util.ArrayList;
import java.util.List;


@XmlRootElement
@XmlType(name = "group")
@Entity
@Table(name="Groups1")
public class Group {
    @Id
    @GeneratedValue
    private long id;
    private String name;

    @XmlElement(name = "contact")
    @OneToMany(mappedBy="group", cascade=CascadeType.ALL)
    private List<Contact> contacts = new ArrayList<Contact>();

    public Group() {}

    public Group(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Contact> getContactss() {
        return contacts;
    }

    public void setContacts(List<Contact> contacts) {
        this.contacts = contacts;
    }
}
