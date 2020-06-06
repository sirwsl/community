package com.wsl.until;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
class FilesImplTest {

    @Autowired
    public filetool file;

    @Test
    void deleteMetting() throws Exception{
        System.out.println(file.deleteMetting("test.txt"));
        System.out.println("OK");
    }
}