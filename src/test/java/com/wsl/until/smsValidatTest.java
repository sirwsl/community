package com.wsl.until;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
class smsValidatTest {



    @Test
    void getCode() {
        smsValidat smsValidat = new smsValidat();
        System.out.println( smsValidat.getCode("18314263373").toString());

    }
}