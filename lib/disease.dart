import 'dart:ui';

import 'package:flutter/material.dart';

class Disease extends StatefulWidget {
  @override
  _Disease createState() => _Disease();
}

class _Disease extends State<Disease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Disease"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              "Skin Cancer",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
                "Skin cancer — the abnormal growth of skin cells — most often develops on skin exposed to the sun. But this common form of cancer can also occur on areas of your skin not ordinarily exposed to sunlight. There are three major types of skin cancer — basal cell carcinoma, squamous cell carcinoma and melanoma. All types of skin cancer with their symptoms are described below."),
            SizedBox(
              height: 20,
            ),
            Text(
              "Melanoma",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/melanoma.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "Melanoma is a type of skin cancer that occurs when pigment producing cells called melanocytes mutate and begin to divide uncontrollably. Most pigment cells develop in the skin. Melanomas can develop anywhere on the skin, but certain areas are more at risk than others. In men, it is most likely to affect the chest and neck. In women, the legs are the most common site. Other common sites of melanoma include the face."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Symptoms might include a new, unusual growth or a change in an existing mole. Melanomas can occur anywhere on the body."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Treatment may involve surgery, radiation, medication or in some cases, chemotherapy."),
            SizedBox(
              height: 50,
            ),
            Text(
              "Basal Cell Carcinoma",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/basal.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "Basal cell carcinoma is a cancer that grows on parts of your skin that gets lot of sun. Its natural to feel worries when your doctor tells you that you have it, but that it is the least risky type of skin cancer. As long as you catch it early, you can be cured. The cancer is unlikely to spread from your skin to others parts of your body, but it can move nearby into bone or other tissue under your skin. Several treatments can keep that from happening and get rid of the cancer."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "This cancer typically appears as a white, waxy lump or a brown, scaly patch on sun-exposed areas, such as the face and neck."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Treatments include prescription creams or surgery to remove the cancer. In some cases radiation therapy may be required."),
            SizedBox(
              height: 50,
            ),
            Text(
              "Melanocytic Nevus",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/melanocytic.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "A usually non-cancerous disorder of pigment-producing skin cells commonly called birth marks or moles. This type of mole is often large and caused by a disorder involving melanocytes, cells that produce pigment (melanin). Melanocytic nevi can be rough, flat or raised. They can exist at birth or appear later. Rarely, melanocytic nevi can become cancerous. Most cases don't require treatment, but some cases require removal of the mole."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Skin: birthmark or discolouration"),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Most cases don't require treatment, but some cases require removal of the mole. Medical: Freezing, Surgical removing"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Actinic Keratosis",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/actinic.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "Actinic keratoses usually affects older adults. Reducing sun exposure can help reduce risk. It is most common on the face, lips, ears, back of hands, forearms, scalp and neck. The rough, scaly skin patch enlarges slowly and usually causes no other signs or symptoms. A lesion may take years to develop. Because it can become cancerous, it's usually removed as a precaution."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "It is most common on the face, lips, ears, back of hands, forearms, scalp and neck. The rough, scaly skin patch enlarges slowly and usually causes no other signs or symptoms. A lesion may take years to develop."),
            Text(
                "Because it can become cancerous, it's usually removed as a precaution. Medications includes Topical anti-tumor medication, Chemotherapy and Nonsteroidal anti-inflammatory drug"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Benign Keratosis",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/benign.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "A seborrhoeic keratosis is one of the most common non-cancerous skin growths in older adults. While it's possible for one to appear on its own, multiple growths are more common. Seborrheic keratosis often appears on the face, chest, shoulders or back. It has a waxy, scaly, slightly elevated appearance. No treatment is necessary. If the seborrhoeic keratosis causes irritation, it can be removed by a doctor."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Seborrheic keratosis often appears on the face, chest, shoulders or back. It has a waxy, scaly, slightly elevated appearance."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "No treatment is necessary. If the seborrhoeic keratosis causes irritation, it can be removed by a doctor. Medication include Tissue scraping, Laser therapy and Freezing"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Dermatofibroma",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/dermatofibroma.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "Dermatofibroma (superficial benign fibrous histiocytoma) is a common cutaneous nodule of unknown etiology that occurs more often in women. Dermatofibroma frequently develops on the extremities (mostly the lower legs) and is usually asymptomatic, although pruritus and tenderness can be present. It is actually the most common painful skin tumor. [1] A number of well-described, histologic subtypes of dermatofibroma have been reported. Removal of the tumor is usually not typically required unless diagnostic uncertainty exists or particularly troubling symptoms are present."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Usually appear on the lower legs, but may appear on the arms or trunk. May be red, pink, purplish, gray or brown and may change color over time. May be as small as a BB pellet but rarely grow larger than a fingernail. Are often painless but may be tender, painful or itchy."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Treatment options include: Intra-lesional steroid injections (steroid injections into the lesion), which can cause the dermatofibroma to flatten slightly. Cryotherapy (freezing with liquid nitrogen), but this will leave a scar and the lesion may recur."),
            SizedBox(
              height: 50,
            ),
            Text(
              "Vascular Lesion",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/vascular.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "Vascular lesions are relatively common abnormalities of the skin and underlying tissues, more commonly known as birthmarks. There are three major categories of vascular lesions: Hemangiomas, Vascular Malformations, and Pyogenic Granulomas. While these birthmarks can look similar at times, they each vary in terms of origin and necessary treatment."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Symptoms of a ruptured vascular malformation often come on suddenly and include a sudden, severe headache (“worst headache of my life”) different from past headaches, nausea and vomiting, sensitivity to light, weakness, confusion, fainting or loss of consciousness, and seizures."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Laser treatment is usually the best option for vascular lesions of the face. On the legs, injection of a medication to destroy the blood vessel (sclerotherapy) can be a better option for spider veins. Deeper veins may need treatment with surgery or very small lasers that are inserted into larger blood vessels."),
            SizedBox(
              height: 50,
            ),
            Text(
              "Squamous Cell Carcinoma",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Image(image: AssetImage("assets/squamous.jpg")),
            SizedBox(
              height: 10,
            ),
            Text(
                "Squamous cell carcinoma (SCC) is the second most common form of skin cancer. It’s usually found on areas of the body damaged by UV rays from the sun or tanning beds. Sun-exposed skin includes the head, neck, chest, upper back, ears, lips, arms, legs, and hands. SCC is a fairly slow-growing skin cancer. Unlike other types of skin cancer, it can spread to the tissues, bones, and nearby lymph nodes, where it may become hard to treat. When caught early, it’s easy to treat."),
            SizedBox(
              height: 25,
            ),
            Text(
              "Symptoms",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "A dome-shaped bump that looks like a wart A red, scaly patch of skin that’s rough and crusty and bleeds easily An open sore that doesn’t heal completely A growth with raised edges and a lower area in the middle that might bleed or itch"),
            SizedBox(
              height: 25,
            ),
            Text(
              "Treatment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
                "Treatments include topical medication and minor surgery. In some cases radiation therapy is required. Treatment commonly includes surgery. If the cancer is widespread or aggressive, chemotherapy or radiation may be recommended.")
          ],
        ),
      ),
    );
  }
}
