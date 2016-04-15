package com.Grove
import com.Grove.Leaf
import java.lang.reflect.Type

class Branch {

    static hasMany = [leaf:Leaf]

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
