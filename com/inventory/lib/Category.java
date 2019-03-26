package com.inventory.lib;

import java.util.UUID;

public class Category {
  private String id;
  private String name;

  public Category() {}

  public Category(String id, String name) {
    this.id = id;
    this.name = name;
  }

  public Category(String name) {
    UUID id = UUID.randomUUID();
    this.id = id.toString();
    this.name = name;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }
` 
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

}