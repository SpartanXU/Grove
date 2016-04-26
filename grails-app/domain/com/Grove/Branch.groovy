package com.Grove
import com.Grove.Leaf
import com.Grove.Branch

import java.lang.reflect.Type

class Branch {

    static hasMany = [leaf:Leaf]
    static belongsTo = [user:User]




    byte[] branchImage
    String branchTitle
    String introduction
    Long childbranchid



    static constraints = {

        branchImage(maxSize: 10 * 1024 * 1024)
        childbranchid nullable: true;
        //childbranch nullable: true;
        //leaf nullable: true;
        //user nullable: false;

    }


    static mapping = {


    }

}
