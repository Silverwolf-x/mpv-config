// MIT License

// Copyright (c) 2019-2021 bloc97
// All rights reserved.

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x3
//!HOOK MAIN
//!BIND MAIN
//!SAVE conv2d_tf
//!WIDTH MAIN.w
//!HEIGHT MAIN.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (MAIN_texOff(vec2(x_off, y_off)))
vec4 hook() {
    vec4 result = mat4(-0.09991986, 0.13782342, -0.031251684, -0.06356843, -0.3437488, 0.05450952, 0.34347802, 0.46335372, 0.08607224, 0.044988394, 0.137179, 0.17976908, 0.0, 0.0, 0.0, 0.0) * go_0(-1.0, -1.0);
    result += mat4(-0.024212424, -0.09278509, -0.00040907756, 0.34552294, -0.13254678, 0.113105185, 0.005667946, -0.00036919137, -0.06375679, 0.009184115, 0.115518734, -0.115506776, 0.0, 0.0, 0.0, 0.0) * go_0(-1.0, 0.0);
    result += mat4(-0.14101827, 0.023523493, 0.044094566, -0.019271746, -0.44348842, -0.08818877, -0.4026149, -0.21995795, -0.15880394, -0.013732858, -0.020751135, 0.012719151, 0.0, 0.0, 0.0, 0.0) * go_0(-1.0, 1.0);
    result += mat4(0.013001821, -0.34503505, 0.39219138, 0.18792126, 0.24760444, -0.016173402, 0.10154511, 0.15453082, -0.058132876, 0.016784398, -0.05808539, -0.11039915, 0.0, 0.0, 0.0, 0.0) * go_0(0.0, -1.0);
    result += mat4(0.37024534, 0.041440863, -0.3374568, -0.44994286, 0.19555596, 0.20855539, -0.27974075, -0.5372628, 0.21228147, -0.0295346, -0.56700057, 0.030042822, 0.0, 0.0, 0.0, 0.0) * go_0(0.0, 0.0);
    result += mat4(-0.12940632, 0.057526, 0.090682045, -0.06985033, -0.13704006, -0.047685407, 0.44615674, -0.48056605, -0.06166251, -0.01883519, 0.2032237, -0.113287605, 0.0, 0.0, 0.0, 0.0) * go_0(0.0, 1.0);
    result += mat4(0.010856669, -0.35820737, 0.16757219, 0.082619876, -0.03967303, 0.038705572, 0.32652855, -0.012030017, 0.015120559, -0.15314877, 0.23442009, 0.09767922, 0.0, 0.0, 0.0, 0.0) * go_0(1.0, -1.0);
    result += mat4(-0.046272673, -0.17752305, 0.082018286, -0.2512824, 0.58619463, -0.060903464, -0.022793597, 0.077803515, -0.17025311, 0.05136993, 0.029383298, -0.15475409, 0.0, 0.0, 0.0, 0.0) * go_0(1.0, 0.0);
    result += mat4(-0.11212024, 0.13378005, -0.2027488, 0.08056421, -0.11176219, -0.048429377, -0.08396386, 0.10507829, 0.13326839, 0.0430627, 0.051362377, 0.06482755, 0.0, 0.0, 0.0, 0.0) * go_0(1.0, 1.0);
    result += vec4(-0.061233472, 0.39222646, 0.029704979, 0.02586828);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_tf
//!SAVE conv2d_1_tf
//!WIDTH conv2d_tf.w
//!HEIGHT conv2d_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.16410656, -0.40521824, 0.13121907, -0.02314597, 0.105412476, -0.060401272, -0.043063477, -0.13933973, 0.12558138, -0.020861467, 0.030370515, 0.13178016, -0.14220351, 0.20736893, 0.003321564, -0.29241714) * go_0(-1.0, -1.0);
    result += mat4(0.18517321, 0.29162985, -0.26783395, 0.039760686, 0.025527012, -0.067319244, 0.055004176, 0.048916563, 0.12750523, -0.091435954, 0.13818842, 0.36704224, 0.0839921, 0.10186618, -0.17237376, 0.13282418) * go_0(-1.0, 0.0);
    result += mat4(-0.1657887, 0.0131325135, -0.17222486, 0.091398895, -0.12756164, -0.08437298, -0.29052997, 0.3269337, 0.15870757, -0.013529402, -0.0581753, 0.11802371, 0.07099966, -0.024063632, 0.31834844, -0.11183859) * go_0(-1.0, 1.0);
    result += mat4(0.46036887, -0.07654623, 0.22923063, 0.17463821, 0.10555414, -0.117430426, 0.12406777, -0.011399492, 0.028316498, 0.13684341, 0.009664087, 0.2022659, 0.04953974, -0.31342217, -0.6103131, -0.13605757) * go_0(0.0, -1.0);
    result += mat4(0.03406955, -0.39819366, 0.61176, -0.46809456, -0.029321073, 0.46619493, 0.36700186, 0.02288561, 0.11464085, -0.10931452, -0.09154022, 0.07334147, -0.5609916, 0.31826234, -0.011012659, -0.46719545) * go_0(0.0, 0.0);
    result += mat4(-0.056855045, 0.27037027, -0.09269696, -0.563572, -0.06816116, -0.22986612, 0.08693167, -0.16246101, 0.09954046, -0.05374176, 0.0071916827, -0.1788692, 0.3825241, -0.1609887, 0.055204768, 0.10213068) * go_0(0.0, 1.0);
    result += mat4(0.0646626, 0.102358796, -0.45055822, 0.20557903, -0.23337309, 0.12633002, -0.19299199, -0.15085731, -0.13473304, 0.053790465, -0.10061193, -0.13393497, -0.04264752, -0.029740738, -0.07865285, 0.20883279) * go_0(1.0, -1.0);
    result += mat4(0.010471527, -0.033218473, -0.46157447, 0.004866583, 0.23226471, -0.059343327, -0.1439596, 0.13619648, 0.013839963, 0.15930325, 0.043742355, 0.17467323, 0.33772305, 0.40261495, -0.08351293, 0.18129359) * go_0(1.0, 0.0);
    result += mat4(-0.12493434, -0.1875134, -0.074943796, -0.0031701606, -0.037142616, 0.1667002, 0.16665547, -0.011248127, 0.0071619414, 0.0034872112, 0.120318964, -0.09625579, 0.14917047, -0.16310586, 0.07231737, 0.30447328) * go_0(1.0, 1.0);
    result += mat4(0.093798615, 0.17074613, -0.08780678, -0.012520207, 0.118534856, 0.027508778, -0.2778478, -0.19509242, -0.34137097, 0.32000312, -0.22027159, 0.337515, 0.16220862, 0.108993016, 0.14070526, 0.12784284) * go_1(-1.0, -1.0);
    result += mat4(-0.14325632, -0.1467453, -0.27502358, 0.09370837, 0.11821083, -0.012266484, -0.2100548, 0.4707502, -0.06766648, 0.58165014, -0.2512279, -0.33783755, 0.1318925, -0.04346277, 0.15454485, 0.044500057) * go_1(-1.0, 0.0);
    result += mat4(-0.05683207, 0.0051946463, -0.108000524, 0.10133204, -0.50763863, 0.007308442, 0.8542404, 0.28387356, 0.022709515, 0.294523, -0.3822472, 0.66166407, 0.01404485, 0.031282708, -0.26756814, -0.123147786) * go_1(-1.0, 1.0);
    result += mat4(-0.36455178, 0.3470555, -0.045303088, -0.03170764, -0.15802494, -0.0019141496, -0.25939587, -0.23875342, 0.130428, 0.03954273, -0.17985536, 0.105145946, 0.15804817, 0.12551713, 0.28371975, -0.085748516) * go_1(0.0, -1.0);
    result += mat4(0.0060625463, 0.2443924, -0.017692259, -0.20214005, -0.09584515, -0.012805372, -0.13942227, 0.16143198, 0.12942013, 0.41785547, 0.046071563, 0.7030026, 0.10499644, -0.20566013, -0.031321276, 0.27830327) * go_1(0.0, 0.0);
    result += mat4(-0.081274964, -0.14562319, 0.27200526, -0.20491314, 0.012910989, 0.024201397, 0.04816258, 0.21297328, -0.22015952, -0.44160756, -0.056035373, 0.33824417, -0.31645304, 0.15469243, 0.053187452, -0.20989445) * go_1(0.0, 1.0);
    result += mat4(-0.046550367, 0.033185404, 0.33337244, 0.12853645, 0.23520172, -0.05909214, 0.0861368, 0.10706329, -0.07058717, -0.11759937, -0.18594047, 0.080006264, -0.055425353, -0.12506317, 0.15729053, -0.0915004) * go_1(1.0, -1.0);
    result += mat4(0.042516407, 0.14844789, 0.16533111, 0.13502933, -0.0655417, -0.057256397, 0.076713726, -0.23448966, 0.12855926, 0.014219275, 0.051761385, 0.053433083, -0.2446715, -0.4008074, 0.19603717, -0.1796951) * go_1(1.0, 0.0);
    result += mat4(0.14777803, 0.15524907, 0.043158617, -0.06996876, 0.19210646, -0.2144364, -0.47020787, -0.4207906, -0.18074386, -0.2163903, 0.0030754965, 0.36799973, -0.3837698, -0.0022661497, -0.37276733, -0.28934997) * go_1(1.0, 1.0);
    result += vec4(-0.018297346, -0.080951825, -0.062163066, -0.08050014);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_1_tf
//!SAVE conv2d_2_tf
//!WIDTH conv2d_1_tf.w
//!HEIGHT conv2d_1_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_1_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_1_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(0.31543177, 0.23095237, -0.06692611, -0.5867763, 0.003622504, 0.17948842, -0.14627707, 0.1745016, -0.052964583, -0.15551159, 0.05644786, -0.012665164, 0.13107763, 0.11369179, -0.09452995, -0.11973403) * go_0(-1.0, -1.0);
    result += mat4(-0.2694661, -0.115382135, 0.3073268, -0.067228466, -0.25511482, -0.13922207, 0.36758214, -0.18821828, -0.022617863, 0.20333402, -0.11125889, 0.3552245, -0.013346653, -0.099095374, -0.25100616, 0.35521755) * go_0(-1.0, 0.0);
    result += mat4(0.011012409, -0.13675085, 0.25642, -0.34851208, -0.23184675, 0.18012202, 0.57654136, 0.103173524, -0.16461405, 0.038177088, 0.1234096, 0.013202029, -0.19033363, 0.07469178, -0.017948546, 0.15287702) * go_0(-1.0, 1.0);
    result += mat4(-0.05340533, 0.23797482, 0.20351392, -0.05333351, -0.12181174, -0.23363493, -0.20696607, 0.109941036, -0.11519453, 0.13842066, -0.10687832, 0.29040006, 0.022218632, 0.031238724, 0.2685182, 0.15300068) * go_0(0.0, -1.0);
    result += mat4(0.22985318, -0.3103802, -0.22916415, 0.25238806, -0.11690287, -0.1947488, 0.118020535, 0.07814263, -0.06335474, -0.007870727, 0.076106325, 0.094677486, -0.16776285, -0.006570437, -0.29589584, 0.41413507) * go_0(0.0, 0.0);
    result += mat4(0.43607962, -0.36456433, -0.123776875, -0.16634953, -0.091190875, 0.13035081, 0.28627968, 0.27249968, 0.12356344, -0.008616177, 0.09599816, -0.006144557, -0.23490307, 0.3013123, 0.14153156, 0.21837278) * go_0(0.0, 1.0);
    result += mat4(0.060364585, 0.37860224, 0.039182413, -0.22805426, -0.089910224, -0.06817697, -0.2684275, -0.12528503, 0.036934495, -0.07826616, 0.06559976, -0.08253646, 0.13489649, 0.06237663, 0.126376, 0.21194184) * go_0(1.0, -1.0);
    result += mat4(-0.12534817, 0.21225189, -0.27818045, -0.3070443, -0.006957577, -0.025105853, 0.12100924, -0.06916452, 0.23081483, 0.1802756, -0.18995638, 0.16603014, -0.2904096, -0.25292823, -0.21834068, 0.13719653) * go_0(1.0, 0.0);
    result += mat4(0.017209655, 0.10757137, 0.21414296, -0.30885983, 0.10467716, -0.2184891, 0.100061476, -0.1527528, 0.2100472, -0.25768545, -0.22329919, -0.29153427, -0.06983842, -0.103854865, -0.051384352, 0.14629121) * go_0(1.0, 1.0);
    result += mat4(0.0059623295, -0.26060802, 0.32115817, 0.021025505, 0.09783085, -0.15865178, 0.1473021, -0.24977303, -0.033508282, 0.17480391, -0.091310136, 0.09870876, 0.10504043, -0.06105686, 0.013493489, -0.11278855) * go_1(-1.0, -1.0);
    result += mat4(0.14875248, -0.14859414, 0.19377062, -0.17456068, 0.101288855, -0.1113682, -0.48944646, 0.1018565, -0.037392337, 0.08539691, 0.1751306, -0.15428723, -0.059375558, 0.027663672, 0.051804014, -0.049813222) * go_1(-1.0, 0.0);
    result += mat4(0.118846565, -0.19869871, -0.037388258, 0.08456728, -0.11662527, -0.43818352, -0.093285345, 0.038507205, -0.051991668, 0.21008292, 0.10792365, 0.2020924, 0.057021596, 0.09460527, 0.0016551288, -0.0015957063) * go_1(-1.0, 1.0);
    result += mat4(0.11062174, -0.2639232, -0.060295466, -0.3217331, -0.050545212, 0.30989558, 0.30906132, 0.030323273, 0.028986752, 0.037429404, 0.20855664, -0.19848943, 0.034687653, -0.09599135, -0.06250494, -0.13215867) * go_1(0.0, -1.0);
    result += mat4(-0.010391146, 0.07657845, 0.44491258, 0.0435906, 0.0075931503, 0.42632654, 0.47022533, 0.34737435, -0.15452717, -0.14613411, -0.45231065, 0.12094409, 0.0067911847, 0.057501152, 0.09876979, 0.044946447) * go_1(0.0, 0.0);
    result += mat4(-0.15607435, 0.2293058, -0.09520331, 0.012836732, -0.15282455, 0.26437718, -0.1685477, -0.13211122, -0.055801593, -0.016778728, -0.34478986, -0.23228309, 0.12300962, -0.13235827, -0.13987203, -0.16550972) * go_1(0.0, 1.0);
    result += mat4(0.13161735, -0.09039346, -0.033475474, -0.23686698, 0.1514885, 0.20977421, 0.031431954, -0.0049226107, 0.090661936, 0.15288061, -0.03316583, 0.09646573, -0.32651708, 0.18825398, -0.15777239, 0.17572704) * go_1(1.0, -1.0);
    result += mat4(0.112157226, -0.08712878, 0.23453182, 0.1043877, -0.14686783, 0.28682423, -0.086443506, 0.059457052, -0.31530112, -0.2700583, -0.06028952, -0.070416875, 0.18053482, 0.16653341, 0.25215197, 0.061915852) * go_1(1.0, 0.0);
    result += mat4(-0.20122242, 0.076313145, -0.0988483, 0.094337784, -0.35436687, 0.3762327, -0.07809558, 0.3055848, 0.10425242, -0.17087407, 0.030301496, -0.13911743, 0.01630275, 0.24247427, -0.006474477, 0.03842641) * go_1(1.0, 1.0);
    result += vec4(-0.008952847, -0.0058945753, -0.08097229, 0.020968592);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_2_tf
//!SAVE conv2d_3_tf
//!WIDTH conv2d_2_tf.w
//!HEIGHT conv2d_2_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_2_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_2_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.2237721, -0.0064096362, -0.31808427, 0.73477733, 0.015353088, 0.23983319, 0.14967978, -0.34920225, -0.07456269, 0.093151815, -0.14331086, -0.24586205, -0.14183366, 0.06401045, -0.22044073, 0.29932275) * go_0(-1.0, -1.0);
    result += mat4(-0.07968509, -0.3349146, 0.16529128, 0.08443499, 0.4095855, -0.17120704, 0.17425705, 0.15298946, 0.2981273, 0.2212369, 0.10392389, -0.28775454, -0.065247655, -0.15255849, 0.13094437, 0.18685219) * go_0(-1.0, 0.0);
    result += mat4(0.015706737, -0.17755036, 0.2622526, 0.112057306, -0.15876788, -0.38466996, -0.33700845, -0.031711742, -0.023320962, -0.3145249, -0.21223734, -0.1314596, -0.1888095, -0.046370104, 0.09000896, -0.0046378844) * go_0(-1.0, 1.0);
    result += mat4(-0.31127506, 0.31304324, -0.03965752, 0.03649018, -0.029851055, 0.05801377, 0.00040150844, -0.04422069, 0.18019931, 0.14415511, -0.09845236, 0.21895434, -0.013932474, -0.046454947, -0.3403935, -0.006705289) * go_0(0.0, -1.0);
    result += mat4(-0.34878647, -0.5129283, 0.060250953, -0.16354133, 0.20644619, 0.08732273, -0.24118888, 0.24455065, 0.24449423, 0.44103387, 0.22455928, 0.25738943, -0.26914698, -0.21309987, 0.08386486, 0.021484816) * go_0(0.0, 0.0);
    result += mat4(-0.057454903, -0.4121922, 0.022661546, 0.37178272, 0.03331408, 0.05044008, 0.04324371, 0.20727943, 0.2432641, 0.076906696, -0.20858039, 0.012439015, -0.19335061, 0.09217451, 0.1968369, -0.19435833) * go_0(0.0, 1.0);
    result += mat4(-0.16960496, 0.24616167, 0.37977478, 0.14324574, -0.011531225, -0.11312143, -0.18141079, -0.23843932, 0.0086012175, -0.3564491, -0.12639481, 0.009799298, -0.29120612, 0.23756824, 0.18035695, -0.087133996) * go_0(1.0, -1.0);
    result += mat4(-0.10081239, 0.29191494, 0.10434693, 0.08970636, 0.008997759, 0.104756236, 0.039641086, 0.02323888, -0.11627765, 0.023693223, -0.30801758, -0.120208986, 0.05086147, 0.18498175, 0.15595439, -0.09877306) * go_0(1.0, 0.0);
    result += mat4(0.101321675, -0.2929976, 0.38810417, 0.5605376, -0.04073937, 0.030110704, -0.18147062, -0.09833952, 0.01927733, 0.15335669, -0.15384074, -0.110595055, -0.054297395, -0.077522054, 0.07918369, -0.068480626) * go_0(1.0, 1.0);
    result += mat4(0.23263514, -0.11719232, 0.2903209, -0.007503795, -0.020222448, -0.17790157, -0.15600762, -0.08741775, 0.12529704, 0.25548857, -0.04585447, -0.10255033, 0.18350503, -0.29593533, 0.0868933, 0.027004737) * go_1(-1.0, -1.0);
    result += mat4(-0.14958654, -0.006238835, -0.2928948, 0.1988557, -0.17057803, 0.12524141, 0.13978264, -0.019280292, 0.05967142, -0.07790818, -0.5893818, -0.022845713, -0.08596779, 0.07875358, -0.03316667, -0.4369282) * go_1(-1.0, 0.0);
    result += mat4(0.19195688, -0.060883682, -0.25897828, 0.07063324, 0.090833396, 0.003422883, 0.109534174, 0.031180874, -0.05017118, 0.022862168, -0.270113, -0.057831235, 0.53920543, -0.10252776, -0.091807485, 0.004294343) * go_1(-1.0, 1.0);
    result += mat4(-0.18494242, -0.119284816, 0.3821897, 0.07777979, 0.15568028, -0.2854859, -0.22441281, -0.049155876, -0.15292497, 0.21895619, -0.095677756, 0.15210424, 0.001643022, -0.026176987, 0.048463076, -0.4824009) * go_1(0.0, -1.0);
    result += mat4(0.007215129, 0.17074333, 0.053930074, -0.027014816, -0.17180431, -0.15163863, -0.0012122132, -0.18934256, -0.08294297, -0.24580221, -0.46552867, -0.27923223, 0.4092668, 0.06288688, -0.1602188, -0.0030876845) * go_1(0.0, 0.0);
    result += mat4(0.111870885, 0.03317145, 0.14155298, 0.20328505, -0.05104131, 0.13979794, 0.018966835, -0.07238511, 0.05493792, -0.14975783, -0.10293237, -0.21985306, 0.49054706, 0.18288186, -0.26925826, 0.35845932) * go_1(0.0, 1.0);
    result += mat4(0.3747799, -0.096748486, -0.17139742, 0.25289854, -0.17421168, -0.018461818, 0.09747162, 0.01660535, -0.20580359, 0.56189656, 0.17151354, -0.26347768, 0.28350568, -0.21486014, -0.44330928, -0.008981037) * go_1(1.0, -1.0);
    result += mat4(0.10169985, -0.18244018, 0.04760736, 0.41017643, -0.09468786, -0.024218475, 0.103733875, -0.22540338, 0.10630112, 0.3677178, -0.104170956, 0.057317447, 0.21764882, 0.0789158, -0.22041337, 0.15065216) * go_1(1.0, 0.0);
    result += mat4(0.11633995, -0.008195114, -0.14501533, 0.07168025, 0.058413275, 0.055995367, 0.09362145, -0.13827963, 0.13760869, 0.040319785, 0.038895044, 0.2675253, -0.087339684, 0.1412073, -0.17166458, -0.2312994) * go_1(1.0, 1.0);
    result += vec4(-0.059377354, -0.02055341, 0.07234869, -0.015452986);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_3_tf
//!SAVE conv2d_4_tf
//!WIDTH conv2d_3_tf.w
//!HEIGHT conv2d_3_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_3_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_3_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.29012984, -0.13150147, 0.31015614, 0.05992291, -0.050289866, 0.14845313, -0.09608898, 0.27913308, 0.060307387, -0.04160452, 0.035932682, -0.08137563, -0.07999419, 0.11818284, -0.27512288, 0.21948813) * go_0(-1.0, -1.0);
    result += mat4(0.12916058, -0.21759962, -0.33868533, 0.021636661, 0.053470243, 0.1412425, 0.043395396, -0.26751056, -0.01689101, -0.2623835, 0.010809152, 0.062962815, -0.20692012, -0.1677863, -0.23313859, -0.17402615) * go_0(-1.0, 0.0);
    result += mat4(-0.08204112, -0.23672083, -0.0064437394, -0.13200696, -0.056692924, -0.02708657, 0.12536962, 0.004428919, 0.14137582, 0.15404348, -0.105753876, 0.047957454, 0.15734316, 0.16562423, -0.010160829, -0.06602983) * go_0(-1.0, 1.0);
    result += mat4(0.025653997, -0.10877775, -0.31258908, 0.18841636, -0.36005193, 0.1816357, -0.34537643, -0.0741087, 0.4663994, 0.0065186517, 0.08109033, 0.2976773, -0.35774228, -0.041366056, -0.37852773, 0.050565656) * go_0(0.0, -1.0);
    result += mat4(0.04392313, 0.11316681, -0.14421389, 0.17985669, -0.1651274, -0.5656209, -0.124100484, 0.42774054, -0.1153939, 0.16829851, 0.2025612, 0.054007456, -0.06868256, -0.56935954, -0.12227961, 0.17688861) * go_0(0.0, 0.0);
    result += mat4(0.34041, 0.499, 0.15234196, 0.21353458, -0.2732667, -0.049950935, 0.03550811, -0.21051687, 0.2609023, 0.016438454, -0.29874632, 0.37994128, 0.049288407, -0.31126305, 0.029235512, -0.012256015) * go_0(0.0, 1.0);
    result += mat4(-0.0046853204, 0.15391374, -0.040689662, 0.20186873, -0.08137621, 0.35905558, 0.23733845, 0.21794793, -0.066420384, 0.029600656, -0.31421044, -0.050773863, -0.06260773, 0.04634221, -0.10948491, -0.045498934) * go_0(1.0, -1.0);
    result += mat4(-0.082953, -0.025837064, -0.09928303, -0.14300232, 0.275064, 0.07793617, 0.22240888, 0.06637834, -0.4382666, -0.2932182, -0.27243167, -0.14221182, 0.5695728, 0.20719238, 0.5575927, 0.40816882) * go_0(1.0, 0.0);
    result += mat4(-0.18510929, -0.15052167, 0.25277212, 0.06804461, 0.016387, 0.20310035, 0.2903229, -0.0615877, -0.28987274, -0.11942605, 0.013498961, 0.3184152, 0.29543474, -0.042830903, -0.018111207, -0.13263674) * go_0(1.0, 1.0);
    result += mat4(0.25749087, 0.0053866603, -0.09391162, -0.06129529, -0.094091184, -0.07419633, 0.0013858611, 0.012000353, -0.062903, -0.0204224, -0.12113313, 0.017942557, -0.073379934, 0.052201986, 0.35864577, 0.023564404) * go_1(-1.0, -1.0);
    result += mat4(0.100115694, 0.19451359, 0.23252094, 0.19506809, -0.12470779, 0.0027281935, -0.17488572, -0.018721964, -0.15159339, 0.18457152, 0.057712987, -0.08191495, 0.19735703, 0.07326743, -0.28563106, 0.01642815) * go_1(-1.0, 0.0);
    result += mat4(0.068062514, 0.28356665, 0.07377898, 0.42776972, 0.28725025, -0.13045293, -0.17525704, -0.05885591, -0.16676305, -0.2555945, -0.10078422, -0.053032875, 0.084470876, 0.06460686, 0.13824362, -0.05231353) * go_1(-1.0, 1.0);
    result += mat4(0.22637829, -0.028969254, 0.1968254, -0.13331996, 0.038017053, -0.008854481, -0.2031639, 0.09237089, -0.3821112, 0.1108527, -0.11029933, -0.24542028, 0.22416145, -0.031492114, -0.19144306, -0.0996271) * go_1(0.0, -1.0);
    result += mat4(0.10776744, 0.16363445, 0.14656505, -0.3737814, -0.06642015, 0.5616549, -0.008412252, -0.37266847, 0.12506576, -0.15329036, 0.037538245, -0.10810259, 0.01706349, 0.1813702, 0.035651788, -0.012786579) * go_1(0.0, 0.0);
    result += mat4(-0.4023338, -0.2098614, -0.18285121, -0.02727653, 0.26107362, 0.041306913, -0.036515504, -0.045217298, -0.39958602, -0.21229339, -0.021053292, -0.13427502, 0.36178818, 0.20934913, 0.1500852, 0.2634554) * go_1(0.0, 1.0);
    result += mat4(0.07794611, -0.25937587, -0.06822529, -0.056336135, 0.094220124, 0.21588847, -0.0455218, -0.10968329, -0.08068449, -0.31366697, 0.07799637, 0.24252681, 0.23963861, 0.13715535, 0.010329345, 0.09094301) * go_1(1.0, -1.0);
    result += mat4(-0.20975718, -0.12550138, 0.14453574, -0.0020878632, -0.07153068, 0.3249998, -0.056577377, 0.18166828, 0.37204072, 0.17018336, 0.3752895, 0.32178587, 0.2571982, -0.27258632, -0.25971004, -0.40536007) * go_1(1.0, 0.0);
    result += mat4(-0.3243907, -0.06300621, -0.09398436, -0.19549188, 0.14906861, 0.061537784, -0.055284478, 0.11281728, 0.12964857, 0.09979093, -0.1810159, -0.4104283, 0.05807971, -0.056371246, 0.08072554, 0.18479007) * go_1(1.0, 1.0);
    result += vec4(-0.048888464, -0.0561434, 0.030690912, -0.030496685);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_4_tf
//!SAVE conv2d_5_tf
//!WIDTH conv2d_4_tf.w
//!HEIGHT conv2d_4_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_4_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_4_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(0.15332128, 0.027258258, 0.14900503, -0.15982795, 0.17021236, -0.51046044, -0.15287271, -0.058167327, 0.51826185, -0.34817994, 0.004513167, 0.05395769, 0.1990321, -0.049979225, 0.11391989, -0.16062729) * go_0(-1.0, -1.0);
    result += mat4(0.033682905, 0.019728886, 0.19931756, 0.17381927, 0.2585768, -0.2124572, -0.014632459, 0.39779893, -0.1146207, -0.2396625, 0.08960277, 0.38345298, 0.25497693, 0.11692859, -0.14207517, 0.12667973) * go_0(-1.0, 0.0);
    result += mat4(-0.14911255, 0.08910706, 0.16136818, 0.03914566, 0.24204038, -0.03607149, -0.4571109, 0.10802461, -0.0021356856, 0.00885878, 0.22297303, 0.2367231, 0.045177583, 0.11120606, -0.009971904, -0.059262395) * go_0(-1.0, 1.0);
    result += mat4(0.24565999, -0.2261384, 0.47373205, 0.024613412, -0.10923052, 0.039027315, -0.42707404, -0.3783373, 0.3544573, -0.5468578, -0.27599156, -0.09455918, 0.18760219, -0.19082001, 0.030565469, 0.20589156) * go_0(0.0, -1.0);
    result += mat4(0.1973198, -0.03433863, 0.059960485, 0.045642868, 0.1819595, -0.14460869, 0.1286175, 0.2067575, -0.042632047, -0.11842967, -0.11224446, -0.18764776, -0.19563004, 0.027425969, 0.24056377, 0.5949649) * go_0(0.0, 0.0);
    result += mat4(0.055027682, 0.16331595, -0.2608588, 0.12545955, 0.4588985, 0.03642909, 0.22187738, 0.45190734, -0.001210133, -0.057651415, -0.061199043, 0.11935476, -0.049561135, 0.27509886, 0.13778673, -0.124914035) * go_0(0.0, 1.0);
    result += mat4(-0.02257459, 0.27705106, 0.044165276, -0.26521233, 0.05982374, -0.2824302, 0.3171142, 0.08430561, -0.10155528, 0.16182268, -0.09183147, -0.19447176, 0.3295707, -0.50616395, -0.036964044, 0.23166709) * go_0(1.0, -1.0);
    result += mat4(-0.0232342, 0.07299799, -0.18038079, -0.13672702, -0.108305976, 0.15024792, -0.19531927, 0.0870979, -0.26488534, 0.19481428, 0.10737945, -0.14573483, -0.33094683, 0.24155116, -0.09850332, 0.2797003) * go_0(1.0, 0.0);
    result += mat4(-0.24089853, 0.19506595, 0.4799156, -0.058313113, 0.36212957, -0.44844806, 0.23864488, 0.15477742, -0.07795971, -0.0033861927, -0.11216164, 0.033454563, -0.25893036, 0.23793478, -0.15769425, -0.00033481256) * go_0(1.0, 1.0);
    result += mat4(0.05772507, -0.1640253, -0.13499664, -0.20460358, -0.024399966, 0.14966168, -0.090857334, -0.039677754, 0.00036956606, -0.24236615, -0.053542696, -0.0049544116, 0.026651502, 0.39019194, -0.2742246, -0.061242323) * go_1(-1.0, -1.0);
    result += mat4(-0.016323274, -0.036179908, 0.029965919, 0.11151491, -0.00016685206, -0.29573023, 0.17996423, -0.20145437, 0.1324275, -0.18442132, -0.24618152, 0.061780427, -0.02770517, 0.28452995, 0.39804098, -0.1174389) * go_1(-1.0, 0.0);
    result += mat4(-0.025068847, -0.053328387, -0.27053785, 0.26866457, -0.09866204, 0.057677213, 0.01850112, -0.18014707, -0.13319959, -0.14411181, -0.26355243, -0.022209354, -0.05062645, -0.036771543, 0.13294417, -0.18458557) * go_1(-1.0, 1.0);
    result += mat4(-0.046194963, 0.038230438, -0.08993043, -0.07236354, 0.11031123, -0.16504908, -0.09517036, -0.16459833, -0.5279925, 0.12686682, -0.05726125, 0.055361677, 0.31593755, 0.027328093, 0.001839602, 0.30581662) * go_1(0.0, -1.0);
    result += mat4(0.08608678, 0.03168437, 0.007713377, -0.26140293, -0.1268983, 0.13395861, -0.069848835, -0.24080403, 0.018839337, -0.049821075, -0.21461345, -0.14168301, -0.0872339, 0.47096667, 0.022512507, 0.14860632) * go_1(0.0, 0.0);
    result += mat4(0.06293673, 0.22462969, 0.045494985, 0.021673543, 0.18227446, -0.2956555, 0.08010543, -0.01919729, -0.012190269, 0.241983, -0.046537094, -0.40094566, -0.3853647, 0.1081711, -0.16926058, 0.16138376) * go_1(0.0, 1.0);
    result += mat4(-0.14854589, -0.17625804, -0.10849075, 0.221543, 0.099971965, 0.13901573, 0.29464146, 0.020068526, 0.054358527, -0.10351705, -0.0062914286, 0.24127026, -0.16914125, 0.12729423, -0.18377453, -0.6452375) * go_1(1.0, -1.0);
    result += mat4(0.12603393, -0.10986093, 0.2314103, 0.16915044, -0.13619255, -0.09349073, 0.20594226, -0.34507084, 0.19077192, 0.052500796, 0.07185645, 0.029082738, -0.015576321, 0.08254907, -0.5501743, -0.38495848) * go_1(1.0, 0.0);
    result += mat4(0.09300796, -0.079218306, 0.46825135, -0.08735625, 0.06321122, 0.16234867, 0.042932414, -0.013057422, 0.09697148, 0.23457524, 0.19417483, -0.16804664, 0.18379296, 0.17770062, -0.050235, -0.059676602) * go_1(1.0, 1.0);
    result += vec4(0.011169491, 0.032399546, 0.138099, 0.023857072);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-4x3x3x8
//!HOOK MAIN
//!BIND conv2d_5_tf
//!SAVE conv2d_6_tf
//!WIDTH conv2d_5_tf.w
//!HEIGHT conv2d_5_tf.h
//!COMPONENTS 4
#define go_0(x_off, y_off) (max((conv2d_5_tf_texOff(vec2(x_off, y_off))), 0.0))
#define go_1(x_off, y_off) (max(-(conv2d_5_tf_texOff(vec2(x_off, y_off))), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.22753362, -0.08612073, 0.33140692, 0.08699529, -0.18788953, -0.056579117, -0.12905197, -0.06694621, 0.054559365, 0.15031597, -0.13430363, 0.021646025, 0.14884405, -0.0694291, 0.26149413, 0.11270503) * go_0(-1.0, -1.0);
    result += mat4(0.17876762, -0.09637848, 0.11285323, 0.2004893, 0.1317187, -0.036162686, 0.17958368, -0.069625, 0.28760737, -0.12505141, 0.12760694, 0.047717955, -0.16811855, -0.16340709, 0.13278298, -0.08403954) * go_0(-1.0, 0.0);
    result += mat4(-0.21917523, 0.079711854, -0.28642535, 0.2822416, 0.03001489, -0.014772918, -0.3487396, 0.10597145, -0.013841082, 0.17034237, 0.10810282, -0.08089695, -0.22184245, -0.59067357, 0.44113398, 0.13045649) * go_0(-1.0, 1.0);
    result += mat4(-0.29906932, 0.013923749, 0.2031124, -0.11846688, -0.13953634, 0.08003455, -0.10164494, -0.21218559, 0.10563715, 0.31033117, -0.075903505, 0.047310907, -0.37824214, -0.14506383, 0.11866701, -0.21384487) * go_0(0.0, -1.0);
    result += mat4(-0.1353849, 0.19258606, 0.063908584, -0.2043788, 0.27244982, 0.1665306, -0.29357895, -0.22441709, 0.18514316, -0.17840464, 0.20986097, 0.14351055, -0.057732623, 0.42166704, -0.23182064, -0.4957248) * go_0(0.0, 0.0);
    result += mat4(-0.34830126, 0.109066755, -0.28285867, -0.048280068, -0.12290918, 0.04291651, -0.047484186, -0.03702595, 0.23047262, 0.09398974, 0.022467108, 0.08271034, 0.3066665, -0.54077, 0.057771873, 0.23194093) * go_0(0.0, 1.0);
    result += mat4(-0.17731948, -0.3175927, 0.1452728, 0.09396786, -0.16433562, -0.01833653, -0.22345604, -0.04161193, -0.14827462, 0.18544114, -0.15544125, -0.06179007, 0.16989979, -0.20985202, 0.16391534, -0.09447268) * go_0(1.0, -1.0);
    result += mat4(-0.053878862, -0.21034616, 0.023831524, 0.19772215, 0.31647214, 0.0126534775, -0.19130844, -0.049282108, -0.21446131, 0.067189045, 0.09117449, -0.25548774, 0.12109098, 0.22009392, -0.3924665, -0.13340388) * go_0(1.0, 0.0);
    result += mat4(-0.16096684, -0.18495405, 0.10410178, 0.0015673033, -0.00183498, -0.044303037, -0.062745355, -0.090802394, 0.043269135, 0.06924481, -0.21367405, -0.14619029, 0.11555763, -0.20292862, 0.5799557, 0.14739846) * go_0(1.0, 1.0);
    result += mat4(-0.21030277, -0.09578802, 0.013482288, -0.21484336, 0.12995781, 0.40431052, -0.3347856, -0.18183486, 0.15550353, -0.04402301, 0.4603779, 0.14874357, -0.07694621, -0.053523075, -0.19607326, -0.10850742) * go_1(-1.0, -1.0);
    result += mat4(-0.2347211, 0.2697403, -0.0634794, -0.17925987, 0.17231455, 0.24999185, -0.5208536, -0.10491828, -0.233575, 0.52950364, 0.0038063182, -0.1380038, 0.022935199, 0.19369157, 0.14586553, 0.1938704) * go_1(-1.0, 0.0);
    result += mat4(-0.10245223, 0.34150192, 0.25862157, -0.20165509, 0.5597771, 0.114510864, -0.122526556, -0.04010975, 0.1704679, -0.23335956, -0.16771887, -0.03783455, -0.056995615, 0.24153493, -0.08082429, -0.24210933) * go_1(-1.0, 1.0);
    result += mat4(-0.103466526, 0.15278348, -0.30526164, -0.080755696, 0.103505425, 0.15862796, 0.14696524, -0.008358076, -0.09180311, -0.12505089, 0.28052542, -0.13551563, 0.07528779, -0.09636086, -0.10369617, 0.23656134) * go_1(0.0, -1.0);
    result += mat4(-0.25752836, 0.099439755, -0.30716348, 0.035077725, 0.023509016, 0.23106368, 0.05277125, 0.34910464, 0.088015385, 0.26995596, 0.1390645, -0.40671825, 0.18096298, -0.100688554, 0.5492049, 0.2482101) * go_1(0.0, 0.0);
    result += mat4(0.41411775, -0.107200556, -0.13813478, 0.13768874, 0.27137747, 0.06313619, -0.08522967, 0.03218302, -0.03166121, -0.3415683, -0.52242, -0.1741813, -0.36956537, 0.179129, -0.09742935, -0.11696616) * go_1(0.0, 1.0);
    result += mat4(-0.07975504, 0.17964838, 0.37122533, 0.16064765, 0.14309953, 0.29473078, 0.0926391, -0.22333665, 0.34612748, -0.3387473, 0.0077308523, -0.07239449, 0.18522519, -0.21297298, 0.11493978, 0.16117814) * go_1(1.0, -1.0);
    result += mat4(-0.17402779, 0.10023144, 0.11712206, 0.031971734, 0.18713303, 0.08736295, 0.013007052, -0.06943139, -0.20102951, -0.010721135, -0.2562522, 0.34877458, -0.13732676, -0.40258047, 0.25824392, 0.15720639) * go_1(1.0, 0.0);
    result += mat4(0.044494305, 0.3296108, 0.0017603852, 0.09362289, 0.38839245, 0.40015858, -0.13395199, -0.044521853, -0.56266373, 0.251378, 0.5005789, -0.13106057, -0.18491416, -0.046887, 0.067797676, -0.14694957) * go_1(1.0, 1.0);
    result += vec4(0.013687534, -0.08185164, -0.04755438, 0.290178);
    return result;
}
//!DESC [Anime4K_Restore_CNN_M][v4.0] Conv-3x1x1x56
//!HOOK MAIN
//!BIND MAIN
//!BIND conv2d_tf
//!BIND conv2d_1_tf
//!BIND conv2d_2_tf
//!BIND conv2d_3_tf
//!BIND conv2d_4_tf
//!BIND conv2d_5_tf
//!BIND conv2d_6_tf
//!SAVE MAIN
//!WIDTH conv2d_tf.w
//!HEIGHT conv2d_tf.h
#define g_0 (max((conv2d_tf_tex(conv2d_tf_pos)), 0.0))
#define g_1 (max(-(conv2d_tf_tex(conv2d_tf_pos)), 0.0))
#define g_2 (max((conv2d_1_tf_tex(conv2d_1_tf_pos)), 0.0))
#define g_3 (max(-(conv2d_1_tf_tex(conv2d_1_tf_pos)), 0.0))
#define g_4 (max((conv2d_2_tf_tex(conv2d_2_tf_pos)), 0.0))
#define g_5 (max(-(conv2d_2_tf_tex(conv2d_2_tf_pos)), 0.0))
#define g_6 (max((conv2d_3_tf_tex(conv2d_3_tf_pos)), 0.0))
#define g_7 (max(-(conv2d_3_tf_tex(conv2d_3_tf_pos)), 0.0))
#define g_8 (max((conv2d_4_tf_tex(conv2d_4_tf_pos)), 0.0))
#define g_9 (max(-(conv2d_4_tf_tex(conv2d_4_tf_pos)), 0.0))
#define g_10 (max((conv2d_5_tf_tex(conv2d_5_tf_pos)), 0.0))
#define g_11 (max(-(conv2d_5_tf_tex(conv2d_5_tf_pos)), 0.0))
#define g_12 (max((conv2d_6_tf_tex(conv2d_6_tf_pos)), 0.0))
#define g_13 (max(-(conv2d_6_tf_tex(conv2d_6_tf_pos)), 0.0))
vec4 hook() {
    vec4 result = mat4(-0.08837163, -0.065234736, -0.034704313, 0.0, 0.021405501, 0.013663729, 0.019249594, 0.0, 0.05328863, 0.03580334, 0.046457592, 0.0, -0.12216048, 0.022547891, 0.016400825, 0.0) * g_0;
    result += mat4(0.061996464, 0.05631466, 0.06808407, 0.0, -0.005013109, -0.0044589997, -0.032367796, 0.0, 0.016481603, 0.13721058, 0.14924648, 0.0, 0.020035887, -0.07250003, -0.08034037, 0.0) * g_1;
    result += mat4(0.24078514, 0.081361525, 0.053420708, 0.0, -0.009353794, -0.051077116, -0.058007747, 0.0, -0.14071098, 0.01035966, 0.005308949, 0.0, -0.1489842, -0.06711817, -0.05552926, 0.0) * g_2;
    result += mat4(-0.13002375, 0.012733757, 0.017821986, 0.0, 0.17767483, 0.20204604, 0.1751779, 0.0, 0.12804912, 0.07381453, 0.05655911, 0.0, 0.17044514, 0.07301451, 0.06523978, 0.0) * g_3;
    result += mat4(-0.1170986, -0.05130371, -0.027939914, 0.0, -0.16645707, -0.121526904, -0.09471366, 0.0, -0.04143118, 0.026693767, 0.034615446, 0.0, -0.084318705, -0.064990036, -0.054324172, 0.0) * g_4;
    result += mat4(0.12094524, 0.09518409, 0.07387219, 0.0, 0.062216382, 0.053228356, 0.031372335, 0.0, 0.072797105, 0.026258165, 0.009804673, 0.0, 0.120719045, 0.073281154, 0.056623302, 0.0) * g_5;
    result += mat4(-0.11141495, -0.11566289, -0.10398725, 0.0, -0.0651895, -0.06820691, -0.054204144, 0.0, -0.032746475, -0.008849683, -0.007610222, 0.0, -0.024655705, -0.048778858, -0.041144755, 0.0) * g_6;
    result += mat4(0.058090195, 0.07538767, 0.059722915, 0.0, 0.044788487, 0.04212742, 0.027502589, 0.0, 0.04892866, 0.015416752, 0.008312418, 0.0, -0.011864114, -0.0074752793, -0.0060824654, 0.0) * g_7;
    result += mat4(0.043446552, 0.061971307, 0.05758086, 0.0, -0.06379154, -0.053758245, -0.047204215, 0.0, 0.016307736, 0.03423424, 0.030179083, 0.0, 0.041445345, 0.03843772, 0.033059113, 0.0) * g_8;
    result += mat4(-0.003803544, 0.0008906116, -0.00059585314, 0.0, 0.102071285, 0.11485224, 0.10007254, 0.0, -0.074306004, -0.08803551, -0.07972321, 0.0, -0.030704215, -0.021514274, -0.009049376, 0.0) * g_9;
    result += mat4(0.0066058086, 0.0011408008, 0.0016199006, 0.0, -0.03916473, -0.042929266, -0.04018418, 0.0, -0.03153446, -0.039413508, -0.034767237, 0.0, 0.113516055, 0.12577052, 0.113335624, 0.0) * g_10;
    result += mat4(0.02655948, 0.041905303, 0.03861737, 0.0, 0.048471425, 0.049788587, 0.050447535, 0.0, 0.12092813, 0.13564217, 0.12613249, 0.0, -0.0023508538, 0.0012828974, 0.0028730957, 0.0) * g_11;
    result += mat4(0.0084758485, 0.008800083, 0.008206044, 0.0, -0.056123603, -0.06610845, -0.060320783, 0.0, -0.081793964, -0.101638645, -0.096699014, 0.0, -0.04402356, -0.04177539, -0.03829645, 0.0) * g_12;
    result += mat4(0.10676299, 0.118409514, 0.10618478, 0.0, -0.05880252, -0.06488367, -0.06432695, 0.0, 0.019221924, 0.017602798, 0.017413978, 0.0, -0.07512528, -0.080483615, -0.066218294, 0.0) * g_13;
    result += vec4(-0.010478934, -0.008364784, -0.010246552, 0.0);
    return result + MAIN_tex(MAIN_pos);
}
