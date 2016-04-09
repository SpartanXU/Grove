package com.Grove

import java.lang.reflect.Type

class Branch {


    byte[] branchImage


    String branchTitle
    String subranchTitle
    String introduction


    static constraints = {

        branchImage(maxSize: 10 * 1024 * 1024)


    }

    static mapping = {


    }
}
