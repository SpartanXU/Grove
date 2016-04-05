package com.Grove

class Branch {


    byte[] branchImage
    String branchTitle
    String subranchTitle
    String introduction


    static constraints = {
        branchImage(nullable:true, maxSize: 16384 /* 16K */)

    }
}
