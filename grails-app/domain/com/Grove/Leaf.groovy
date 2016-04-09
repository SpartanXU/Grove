package com.Grove

class Leaf {

    byte [] leafImage

    String leafTitle
    String leafLink_URL
    String leafInfo

    static constraints = {
        leafImage(maxSize: 10 * 1024 * 1024)
    }
}
