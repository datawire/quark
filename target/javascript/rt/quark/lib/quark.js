const merge_exports = require('./merge_exports')

merge_exports(exports, require("./int"))
merge_exports(exports, require("./string"))
merge_exports(exports, require("./list_int"))
merge_exports(exports, require("./map_string_string"))
merge_exports(exports, require("./map_string_int"))
