package grove



import grails.plugin.springsecurity.annotation.Secured
import com.Grove.Branch

class TrunkController {

    //branches with the most posts will be sorted by popularity on trunk(home) page
    def index() {
        def branchNew = Branch.list(sort:"countLeaf", max: 15).reverse()
        [branchNew: branchNew]
    }
}
