const db = require('../index.js')

const getAllUser = (res, req, next) => {
    db.any('SELECT * FROM users')
        .then(data => {
            res.status(200)
            .json({
                status: "Success",
                message: "Received All Users",
                data: data,
            })
        })
}

module.exports = {
    getAllUser,
}