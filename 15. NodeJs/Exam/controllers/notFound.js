module.exports = function(req, res, next) {
	res.status(404);
	res.render('not-found');

	next();
};