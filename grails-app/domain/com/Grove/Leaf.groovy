package com.Grove
import com.Grove.Branch

class Leaf {

    static belongsTo = [branch:Branch]

    byte [] leafImage
    String leafTitle
    String leafLink_URL
    String leafInfo



    static constraints = {
        leafImage(maxSize: 10 * 1024 * 1024)
        branch nullable: true
    }


}
