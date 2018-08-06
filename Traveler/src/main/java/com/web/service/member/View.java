package com.web.service.member;
import com.google.api.services.plus.model.Activity;

/**
 * Utility methods to print to the command line.
 * 
 * @author Yaniv Inbar
 */
public class View {

  static void header1(String name) {
    System.out.println();
    System.out.println("================== " + name + " ==================");
    System.out.println();
  }

  static void show(Activity activity) {
    System.out.println("id: " + activity.getId());
    System.out.println("url: " + activity.getUrl());
    System.out.println("content: " + activity.getObject().getContent());
  }
}