package grove


import com.Grove.Branch


class BranchController {

    def index() {
        def var = Branch.get(params.id)
        [var:var]

    }


    def createBranch() {
        def branch = Branch.getAll()
        [branch: branch]
    }

    def BranCreate() {
        def branch = new Branch(params)

        if (branch.save()) {
<<<<<<< HEAD
            redirect(action:"index")
            
=======
            redirect(action:"index", params: branch.id)
>>>>>>> e6f4dc2efdffe2b8534817ad16d331022ce792a3
        } else {
            render(view:"createBranch",model:[branch:branch])
        }
    }


    def viewBranch() {
        def branch = Branch.list(sort: "branchTitle")
        [branch: branch]
    }

}
