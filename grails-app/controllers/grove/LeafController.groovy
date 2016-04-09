package grove

import com.Grove.Leaf

class LeafController {

    def index() {
        def leaf_var = Leaf.get(params.id)
        [leaf_var:leaf_var]
    }

    def displayImage() {
        def file = Leaf.findById(params.id)
        byte[] image = file.leafImage
        response.contentType = 'image/png'
        response.outputStream << image
        response.outputStream.flush()
    }

    def leafCreate() {
        def leaf = new Leaf(params)
        if (leaf.save()) {

            println "Save successfully with ${leaf.leafImage.length} bytes"
            redirect(action:"viewLeaf")

        } else {
            println "Save failed"
            render(view:"createLeaf",model:[leaf:leaf])
        }

    }

    def viewLeaf() {
        def viewLeaf = Leaf.list(sort: "leafTitle")
        [viewLeaf: viewLeaf]
    }

    def createLeaf() {
        def leaf = Leaf.getAll()
        [leaf:leaf]
    }
}
