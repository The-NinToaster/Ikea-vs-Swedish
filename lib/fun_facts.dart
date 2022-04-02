import 'dart:math';

class FunFact {
  late String title;
  late String fact;
  late String source;
  FunFact(this.title, this.fact, this.source);
}

class FunFacts {
  List<FunFact> facts = [
    FunFact(
        "The Name of The Company is an Acronym",
        "The name of the company is an acronym for \"Ingvar Kamprad from Elmtaryd, Agunnaryd,the name of the farm and village in Sweden where, the founder- Ingvar Kamprad grew up. That is why the company’s name ‘IKEA’ is written in capital letters.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "IKEA Uses a Unique Naming System for its Items",
        "Because Kamprad was dyslexic, he titled his items with proper names and words to make them simpler to recognise.\nBathroom items from IKEA are titled after lakes, rivers, and bays. Some people may be perplexed by IKEA's usage of Nordic names for its furniture, but there is a system in place.Each product category is named after something specific. Beds, for instance, are called after places in Norway, while sofas are named after towns in Sweden, rugs are typically named after places in Denmark or Sweden, and textiles and curtains are named after women.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "There is an IKEA Museum That People can Visit",
        "The IKEA Museum opened in 2016 in Älmhult, on the location of the company's original shop. The principal exhibitions focus on the store's history and how it has changed through time. The IKEA Museum is housed in the same structure that housed the first IKEA shop, which started in 1958.\nIn 2012, the store relocated to a new location in Älmhult. Work on transforming the store into a museum began about this period, with a 2015 opening date scheduled. The building's foundation has been restored to its original design. The museum is 3500 m2 in size.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "IKEA’s Signature Flat-packed Furniture First Came Around in 1956",
        "IKEA has been known for its self-assembly furniture since 1956, and the company's unique flat-pack furniture was first introduced in the 1950s. Gillis Lundgren, an employee, came up with the idea after removing the legs from a table in order to transfer them in a car. This new method of selling furnishings would save money and make moving new pieces much easier.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "Billy the Bookcase Recently Turned 40",
        "Every minute, 15 Billy bookcases are built. The Billy bookcase system has made it feasible to create an economical library look, from a single bookcase to a wall-to-wall library. By Billy's 30th anniversary in 2009, more than 41 million units had been sold worldwide.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "IKEA Began by Selling Little Items Such as Pencils and Wallets",
        "Despite the fact that IKEA is now linked with furniture, the company started out selling tiny items such as pens, wallets, and picture frames, as well as watches and jewellery. It also functioned as a mail-order company. During the 1940s, his most successful goods appear to have been pens and timepieces.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "IKEA's Headquarters are Now in The Netherlands",
        "IKEA's headquarters have been in Leiden, Netherlands, since 1986. Some speculated that the corporation relocated from Sweden to the Netherlands in order to save money on taxes.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "IKEA Built its First In-store Restaurant in 1956",
        "For many, a stop at IKEA's restaurant for a Swedish meatball binge is the highlight of any visit. The first in-store restaurant for the company debuted in 1956 at the lmhult site. The in-store restaurants were created to feed hungry customers who would spend the entire day shopping in the store, as well as to make them feel welcomed and cared for. Despite the fact that the food served in IKEA kitchens is very traditional, the firm nevertheless has a specialised test kitchen where meals are fine-tuned before being pushed out.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "IKEA sells Complete Houses",
        "IKEA offers flat-pack houses that are way cheaper than the traditional home, with no need for a real estate professional. In 1996, the BoKlok House was established in Sweden. BoKlok is a housing concept that focuses on 'modern homes for the masses'.",
        "https://startuptalky.com/ikea-interesting-facts/"),
    FunFact(
        "The IKEA Catalogue is Produced in Greater Quantities Than the Bible",
        "Annually, the IKEA catalogue reaches around 180 million individuals in 29 languages, compared to roughly 100 million bibles. The catalogue has been around since 1951 and is said to account for roughly 70% of the advertising budget.",
        "https://startuptalky.com/ikea-interesting-facts/"),
  ];

  FunFact fetchFact() {
    var rng = random(0, facts.length);
    return facts[rng];
  }

  int random(min, max) {
    return min + Random().nextInt(max - min);
  }
}
