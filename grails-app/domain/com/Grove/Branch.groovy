package com.Grove

import antlr.collections.List
import com.Grove.Leaf
import com.Grove.Branch

import java.lang.reflect.Array
import java.lang.reflect.Type

class Branch {

    static hasMany = [leaf:Leaf, childbranchid: Long ]
    static belongsTo = [user:User]

    byte[] branchImage
    String branchTitle
    String introduction

    static constraints = {
        branchImage(maxSize: 10 * 1024 * 1024)
        childbranchid nullable: true
    }

    static mapping = {

    }
}


