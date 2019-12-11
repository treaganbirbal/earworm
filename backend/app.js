var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var app = express();

const users = require('./routes/users.js');

app.get('/', (req, res)=> {
    return res.send("hello")
})

app.use('/users', users);

app.listen(3000, () => {
    console.log('listening on port 3k')
})


// view engine setup
// app.set('views', join(__dirname, 'views'));
// app.set('view engine', 'jade');

// app.use(logger('dev'));
// app.use(express.json());
// app.use(express.urlencoded({ extended: false }));
// app.use(cookieParser());
// app.use(static(join(__dirname, 'public')));


// catch 404 and forward to error handler
// app.use(function(req, res, next) {
//   next(createError(404));
// });



module.exports = app;
