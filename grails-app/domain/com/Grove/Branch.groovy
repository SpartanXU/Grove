package com.Grove
import com.Grove.Leaf

import java.lang.reflect.Type

class Branch {

    static hasMany = [leaf:Leaf]
    static belongsTo = [user:User, subbranch:Branch]


    byte[] branchImage
    String branchTitle
    String introduction



    static constraints = {

        branchImage(maxSize: 10 * 1024 * 1024)
        //subbranch nullable: true;
        //childbranch nullable: true;
        //leaf nullable: true;
        //user nullable: false;

    }


    static mapping = {


    }

}
