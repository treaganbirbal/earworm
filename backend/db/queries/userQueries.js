const db = require('../index.js')

const getAllUsers = (req, res, next) => {
    db.any('SELECT * FROM users')
        .then(data => {
            res.status(200)
            .json({
                status: "Success",
                message: "Received All Users",
                data: data,
            })
        })
        .catch(err => {
            console.log("error", err)
            next(err)
        })
}

module.exports = {
    getAllUsers,
}