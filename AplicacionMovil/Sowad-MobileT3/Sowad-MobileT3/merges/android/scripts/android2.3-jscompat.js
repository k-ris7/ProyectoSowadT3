// Polyfill para la compatibilidad con Function.prototype.bind() en Android 2.3
(function () {
    if (!Function.prototype.bind) {
        Function.prototype.bind = function (thisValue) {
            if (typeof this !== "function") {
                throw new TypeError(this + " cannot be bound as it is not a function");
            }

            // bind() también permite anteponer argumentos a la llamada
            var preArgs = Array.prototype.slice.call(arguments, 1);

            // La función real a la que se enlaza el valor "this" y los argumentos
            var functionToBind = this;
            var noOpFunction = function () { };

            // El argumento "this" que se va a usar
            var thisArg = this instanceof noOpFunction && thisValue ? this : thisValue;

            // La función enlazada resultante
            var boundFunction = function () {
                return functionToBind.apply(thisArg, preArgs.concat(Array.prototype.slice.call(arguments)));
            };

            noOpFunction.prototype = this.prototype;
            boundFunction.prototype = new noOpFunction();

            return boundFunction;
        };
    }
}());
