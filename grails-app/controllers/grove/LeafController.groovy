package grove

import com.Grove.Leaf
import com.Grove.Branch
import com.Grove.User
import grails.plugin.springsecurity.annotation.Secured

class LeafController {

    def springSecurityService

    //index page to display the current leaf
    def index() {
        def leaf_var = Leaf.get(params.id)
        [leaf_var:leaf_var]
    }

    //display leaf image
    def displayImage() {
        def file = Leaf.findById(params.id)
        byte[] image = file.leafImage
        response.contentType = 'image/png'
        response.outputStream << image
        response.outputStream.flush()
    }

    //save leaf
    def leafCreate() {

        def leaf = new Leaf(params)

        if (leaf.save()) {
            println "Save successfully with ${leaf.leafImage.length} bytes"
            redirect(action:"viewLeaf", params: [id: leaf.id])
        } else {
            println "Save failed"
            leaf.errors.allErrors.each {
                println it
            }
            render(view:"createLeaf",model:[leaf:leaf])
        }

    }

    //display information
    def viewLeaf() {
        def viewLeaf = Leaf.get(params.id)
        [viewLeaf: viewLeaf]
    }

    def createLeaf() {
        def leaf = Branch.get(params.id)
        def user = springSecurityService.currentUser.id
        [leaf:leaf, user:user]
    }
}

