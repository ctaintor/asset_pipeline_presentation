//= require sprockets_example/giraffe
//= require sprockets_example/zebra

Weight = {
  avgGiraffeWeight: Giraffe.weight,
  avgZebraWeight: Zebra.weight,
  convertToGiraffes: function (kilograms) {
    return kilograms / this.avgGiraffeWeight;
  },
  convertToZebras: function (kilograms) {
    return kilograms / this.avgZebraWeight;
  }
};
