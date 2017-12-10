package com.sda.chat.service;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MyChat {
    private String author;
    private Long timestamp;
    private String message;
}
