//= require sprockets_example/giraffe
//= require sprockets_example/zebra

Weight = {
  avgGiraffeWeight: Giraffe.weight,
  convertToGiraffes: function (kilograms) {
    return kilograms / this.avgGiraffeWeight;
  }
};
