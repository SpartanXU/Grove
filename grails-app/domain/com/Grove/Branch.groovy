package com.Grove

import java.lang.reflect.Type

class Branch {


    byte[] branchImage
    String branchTitle
    String subranchTitle
    String introduction


    static constraints = {
<<<<<<< HEAD
        branchImage(nullable:true, maxSize: 16384 /* 16K */)
=======
        branchImage maxSize: 10 * 1024 * 1024
    }

    static mapping = {
>>>>>>> e6f4dc2efdffe2b8534817ad16d331022ce792a3

    }
}
