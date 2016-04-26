package grove


import com.Grove.Branch
import com.Grove.User
import grails.plugin.springsecurity.annotation.Secured


class BranchController {

    def springSecurityService


    //index page to display information of a single branch
    def index() {
        def var = Branch.get(params.id)
        [var:var]
    }

    //index page to display branch image
    def displayImage() {
        def file = Branch.findById(params.id)
        byte[] image = file.branchImage
        response.contentType = 'image/png'
        response.outputStream << image
        response.outputStream.flush()
    }


    //call createBranch page
    def createBranch() {
        def branch = Branch.getAll()
        def user = springSecurityService.currentUser.id
        [branch: branch, user: user]
    }

    def search() {
        def c = Branch.createCriteria()
        def results = c {
            ilike("branchTitle", "${params.search}%")
        }
        [results:results]
    }

    //upload branch information from createBranch page and store it to database
    //if successfully saved, print a message to show the size of branch image
    //if not saved, print failed and back to the createBranch page
    def BranCreate() {
        def branch = new Branch(branchTitle:params.branchTitle, introduction: params.introduction, branchImage:params.branchImage, user: params.user)
        if (params.parentbranch) {
            def parbranch = Branch.findByBranchTitle(params.parentbranch)
            def parentbranch = Branch.get(parbranch.id)
            parentbranch.childbranchid = branch.id
            parentbranch.save()
            println"${parentbranch.branchTitle} now has a new child branch ID: ${parentbranch.childbranchid}"

        }

        if (branch.save()) {

            println "Save branch image successfully with ${branch.branchImage.length} bytes"
            redirect(action:"viewBranch", params: [id: branch.id])

        } else {
            println "Save failed"
            render(view:"createBranch",model:[branch:branch])
        }
    }

    //viewBranch page to display all branch as a list in a table
    //replace this page with future Branch page that contains every branch
    def viewBranch() {
        def branch = Branch.get(params.id)
        [branch: branch]
    }

}
