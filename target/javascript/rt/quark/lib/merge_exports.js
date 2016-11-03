'use strict';

module.exports = merge_exports

function merge_exports(exports, module) {
    let keys = Object.keys(module)
    for (let i = 0; i < keys.length; i++) {
        let key = keys[i];
        if (exports[key] !== undefined) continue;
        exports[key] = module[key];
    }
}
