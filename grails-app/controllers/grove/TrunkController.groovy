package grove



import grails.plugin.springsecurity.annotation.Secured
import com.Grove.Branch

class TrunkController {

    def index() {
        def count = Branch.countByLeafIsNotNull()
        println count
    }
}
