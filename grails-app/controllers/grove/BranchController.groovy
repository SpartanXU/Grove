package grove


import com.Grove.Branch



class BranchController {

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
        [branch: branch]
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
        def branch = new Branch(params)
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
