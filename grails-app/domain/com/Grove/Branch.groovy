package com.Grove

import antlr.collections.List
import com.Grove.Leaf
import com.Grove.Branch

import java.lang.reflect.Array
import java.lang.reflect.Type

class Branch {

    static hasMany = [leaf:Leaf, childbranchid: Long]   //branches have many-to-one relationship with leafs
                                                        //branches can have many childbranches too
    static belongsTo = [user:User]

    byte[] branchImage
    String branchTitle
    String introduction
    Long countLeaf

    static constraints = {
        branchImage(maxSize: 10 * 1024 * 1024)
        childbranchid nullable: true
        branchTitle nullable: false, blank: false
        branchImage nullable: false

    }

    static mapping = {

    }
}


