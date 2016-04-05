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
            redirect(action:"viewBranch")

        } else {
            render(view:"createBranch",model:[branch:branch])
        }
    }


    def viewBranch() {
        def branch = Branch.list(sort: "branchTitle")
        [branch: branch]
    }

}
