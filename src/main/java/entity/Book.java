package entity;

import java.io.Serializable;

public class Book implements Serializable {
    private  int id  ;
    private  String name;
    private  String price;
    private  int number;
    private String description;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public int getNumber() {
        return number;
    }

    public String getDescription() {
        return description;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public Book(int id, String name, String price, int number, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.number = number;
        this.description = description;
    }

    public Book(){

    }
  @Override
    public String toString(){
        return "id:"+id+"name"+name+"price"+price+"number"+number+"description"+description;
  }
}
