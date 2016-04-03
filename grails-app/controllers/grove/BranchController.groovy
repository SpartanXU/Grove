package grove


import com.Grove.Branch


class BranchController {

    def index() {
        def branch = Branch.list(sort: "name")
        [branch: branch]
    }

    def input() {
        def branch = Branch.getAll()
        [branch: branch]
    }

    def createBranch() {

    }

}
