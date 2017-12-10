package com.sda.chat.service;

import java.util.LinkedList;
import java.util.List;
import static java.util.Collections.unmodifiableList;

public class MyChatService {

        private static MyChatService _instance;

        private List<MyChat> myMessageList;
        private MyChatService() {
            myMessageList = new LinkedList<MyChat>();
        }


        public static  MyChatService getInstance() {
            if (_instance == null) {
                _instance = new MyChatService();
            }
            return _instance;
        }
        public void addMessage(MyChat chat) {
            myMessageList.add(chat);
        }
        public void delMessage(MyChat chat) {
            myMessageList.(chat);
        }
        public void editMessage(MyChat chat) {
            myMessageList.(chat);
        }
        public List <MyChat> getMyMessageList() {
            return unmodifiableList(myMessageList);
        }
    }


