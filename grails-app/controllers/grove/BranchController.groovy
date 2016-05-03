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

    //lists related branches
    def listBranches() {
        def branch = Branch.getAll()
        def parbranch = Branch.findByBranchTitle(params.parentbranch)
        parbranch

        [branch: branch]

    }

    //searches branches by name, not case sensitive
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
        def branch = new Branch(branchTitle:params.branchTitle, introduction: params.introduction, branchImage:params.branchImage, user: params.user, countLeaf: 0)


        if (branch.save()) {

            println "Save branch image successfully with ${branch.branchImage.length} bytes"
            if (params.parentbranch) {
                def parbranch = Branch.findByBranchTitle(params.parentbranch)
                parbranch.childbranchid.add(branch.id)
                println"${parbranch.branchTitle} now has the following child branches with ID: ${parbranch.childbranchid}"
            }
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
