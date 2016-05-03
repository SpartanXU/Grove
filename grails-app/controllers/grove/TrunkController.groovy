package grove



import grails.plugin.springsecurity.annotation.Secured
import com.Grove.Branch

class TrunkController {

    def index() {
        def branchNew = Branch.list(sort:"countLeaf", max: 15).reverse()
        [branchNew: branchNew]
    }
}
