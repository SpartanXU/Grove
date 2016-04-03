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

    def BranchCreate() {
        def branch = new Branch(params)
        if (branch.save()) {
            redirect(action: "index")
        } else {
            render(view: "input", model: [branch: branch])
        }
    }

}
