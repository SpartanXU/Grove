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

        def leaf = new Leaf(leafTitle:params.leafTitle,leafLink_URL:params.leafLink_URL,leafInfo:params.leafInfo,leafImage:params.leafImage, branch:params.branch, user:params.user)

        if (leaf.save()) {

            def branch = Branch.get(params.branch)
            branch.countLeaf = branch.countLeaf + 1
            branch.save()
            println"The branch now has ${branch.countLeaf} leafs"
            println "Save successfully with ${leaf.leafImage.length} bytes"
            redirect(action:"index", params: [id: leaf.id])

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

    //creates a leaf and saves leaf to a certain user id
    def createLeaf() {
        def leaf = Branch.get(params.id)
        def user = springSecurityService.currentUser.id
        [leaf:leaf, user:user]
    }
}

