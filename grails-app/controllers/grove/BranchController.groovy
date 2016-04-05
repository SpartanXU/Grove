package grove


import com.Grove.Branch


class BranchController {

    def index() {
        def branch = Branch.list(sort: "branchTitle")
        [branch: branch]
    }


    def createBranch() {
        def branch = Branch.getAll()
        [branch: branch]
    }

    def BranCreate() {
        def branch = new Branch(params)

        if (branch.save()) {
            redirect(action:"index")
            
        } else {
            render(view:"createBranch",model:[branch:branch])
        }
    }

    def branch() {
        [branch:Branch.get(params.id)]
    }

}
