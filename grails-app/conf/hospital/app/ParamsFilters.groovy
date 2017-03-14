package hospital.app

class ParamsFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                println params
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
