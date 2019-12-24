	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText8746E38::
	.word 0x26000

	text_archive_start

	def_text_script CompText8746E38_unk0
	ts_check_chapter [
		lower: 0x50,
		upper: 0x53,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_check_chapter [
		lower: 0x40,
		upper: 0x46,
		jumpIfInRange: 0x5,
		jumpIfOutOfRange: 0xFF,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8746E38_unk1

	def_text_script CompText8746E38_unk2

	def_text_script CompText8746E38_unk3

	def_text_script CompText8746E38_unk4

	def_text_script CompText8746E38_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "JudgeMan incident..."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText8746E38_unk6

	def_text_script CompText8746E38_unk7

	def_text_script CompText8746E38_unk8

	def_text_script CompText8746E38_unk9

	def_text_script CompText8746E38_unk10

	def_text_script CompText8746E38_unk11

	def_text_script CompText8746E38_unk12

	def_text_script CompText8746E38_unk13

	def_text_script CompText8746E38_unk14

	def_text_script CompText8746E38_unk15

	def_text_script CompText8746E38_unk16

	def_text_script CompText8746E38_unk17

	def_text_script CompText8746E38_unk18

	def_text_script CompText8746E38_unk19

	def_text_script CompText8746E38_unk20

	def_text_script CompText8746E38_unk21

	def_text_script CompText8746E38_unk22

	def_text_script CompText8746E38_unk23

	def_text_script CompText8746E38_unk24

	def_text_script CompText8746E38_unk25

	def_text_script CompText8746E38_unk26

	def_text_script CompText8746E38_unk27

	def_text_script CompText8746E38_unk28

	def_text_script CompText8746E38_unk29

	def_text_script CompText8746E38_unk30

	def_text_script CompText8746E38_unk31

	def_text_script CompText8746E38_unk32

	def_text_script CompText8746E38_unk33

	def_text_script CompText8746E38_unk34

	def_text_script CompText8746E38_unk35

	def_text_script CompText8746E38_unk36

	def_text_script CompText8746E38_unk37

	def_text_script CompText8746E38_unk38

	def_text_script CompText8746E38_unk39

	def_text_script CompText8746E38_unk40

	def_text_script CompText8746E38_unk41

	def_text_script CompText8746E38_unk42

	def_text_script CompText8746E38_unk43

	def_text_script CompText8746E38_unk44

	def_text_script CompText8746E38_unk45

	def_text_script CompText8746E38_unk46

	def_text_script CompText8746E38_unk47

	def_text_script CompText8746E38_unk48

	def_text_script CompText8746E38_unk49

	def_text_script CompText8746E38_unk50

	def_text_script CompText8746E38_unk51

	def_text_script CompText8746E38_unk52

	def_text_script CompText8746E38_unk53

	def_text_script CompText8746E38_unk54

	def_text_script CompText8746E38_unk55

	def_text_script CompText8746E38_unk56

	def_text_script CompText8746E38_unk57

	def_text_script CompText8746E38_unk58

	def_text_script CompText8746E38_unk59

	def_text_script CompText8746E38_unk60

	def_text_script CompText8746E38_unk61

	def_text_script CompText8746E38_unk62

	def_text_script CompText8746E38_unk63

	def_text_script CompText8746E38_unk64

	def_text_script CompText8746E38_unk65

	def_text_script CompText8746E38_unk66

	def_text_script CompText8746E38_unk67

	def_text_script CompText8746E38_unk68

	def_text_script CompText8746E38_unk69

	def_text_script CompText8746E38_unk70

	def_text_script CompText8746E38_unk71

	def_text_script CompText8746E38_unk72

	def_text_script CompText8746E38_unk73

	def_text_script CompText8746E38_unk74

	def_text_script CompText8746E38_unk75

	def_text_script CompText8746E38_unk76

	def_text_script CompText8746E38_unk77

	def_text_script CompText8746E38_unk78

	def_text_script CompText8746E38_unk79

	def_text_script CompText8746E38_unk80

	def_text_script CompText8746E38_unk81

	def_text_script CompText8746E38_unk82

	def_text_script CompText8746E38_unk83

	def_text_script CompText8746E38_unk84

	def_text_script CompText8746E38_unk85

	def_text_script CompText8746E38_unk86

	def_text_script CompText8746E38_unk87

	def_text_script CompText8746E38_unk88

	def_text_script CompText8746E38_unk89

	def_text_script CompText8746E38_unk90

	def_text_script CompText8746E38_unk91

	def_text_script CompText8746E38_unk92

	def_text_script CompText8746E38_unk93

	def_text_script CompText8746E38_unk94

	def_text_script CompText8746E38_unk95

	def_text_script CompText8746E38_unk96

	def_text_script CompText8746E38_unk97

	def_text_script CompText8746E38_unk98

	def_text_script CompText8746E38_unk99

	def_text_script CompText8746E38_unk100

	def_text_script CompText8746E38_unk101

	def_text_script CompText8746E38_unk102

	def_text_script CompText8746E38_unk103

	def_text_script CompText8746E38_unk104

	def_text_script CompText8746E38_unk105

	def_text_script CompText8746E38_unk106

	def_text_script CompText8746E38_unk107

	def_text_script CompText8746E38_unk108

	def_text_script CompText8746E38_unk109

	def_text_script CompText8746E38_unk110

	def_text_script CompText8746E38_unk111

	def_text_script CompText8746E38_unk112

	def_text_script CompText8746E38_unk113

	def_text_script CompText8746E38_unk114

	def_text_script CompText8746E38_unk115

	def_text_script CompText8746E38_unk116

	def_text_script CompText8746E38_unk117

	def_text_script CompText8746E38_unk118

	def_text_script CompText8746E38_unk119

	def_text_script CompText8746E38_unk120

	def_text_script CompText8746E38_unk121

	def_text_script CompText8746E38_unk122

	def_text_script CompText8746E38_unk123

	def_text_script CompText8746E38_unk124

	def_text_script CompText8746E38_unk125

	def_text_script CompText8746E38_unk126

	def_text_script CompText8746E38_unk127

	def_text_script CompText8746E38_unk128

	def_text_script CompText8746E38_unk129

	def_text_script CompText8746E38_unk130

	def_text_script CompText8746E38_unk131

	def_text_script CompText8746E38_unk132

	def_text_script CompText8746E38_unk133

	def_text_script CompText8746E38_unk134

	def_text_script CompText8746E38_unk135

	def_text_script CompText8746E38_unk136

	def_text_script CompText8746E38_unk137

	def_text_script CompText8746E38_unk138

	def_text_script CompText8746E38_unk139

	def_text_script CompText8746E38_unk140

	def_text_script CompText8746E38_unk141

	def_text_script CompText8746E38_unk142

	def_text_script CompText8746E38_unk143

	def_text_script CompText8746E38_unk144

	def_text_script CompText8746E38_unk145

	def_text_script CompText8746E38_unk146

	def_text_script CompText8746E38_unk147

	def_text_script CompText8746E38_unk148

	def_text_script CompText8746E38_unk149

	def_text_script CompText8746E38_unk150

	def_text_script CompText8746E38_unk151

	def_text_script CompText8746E38_unk152

	def_text_script CompText8746E38_unk153

	def_text_script CompText8746E38_unk154

	def_text_script CompText8746E38_unk155

	def_text_script CompText8746E38_unk156

	def_text_script CompText8746E38_unk157

	def_text_script CompText8746E38_unk158

	def_text_script CompText8746E38_unk159

	def_text_script CompText8746E38_unk160

	def_text_script CompText8746E38_unk161

	def_text_script CompText8746E38_unk162

	def_text_script CompText8746E38_unk163

	def_text_script CompText8746E38_unk164

	def_text_script CompText8746E38_unk165

	def_text_script CompText8746E38_unk166

	def_text_script CompText8746E38_unk167

	def_text_script CompText8746E38_unk168

	def_text_script CompText8746E38_unk169

	def_text_script CompText8746E38_unk170

	def_text_script CompText8746E38_unk171

	def_text_script CompText8746E38_unk172

	def_text_script CompText8746E38_unk173

	def_text_script CompText8746E38_unk174

	def_text_script CompText8746E38_unk175

	def_text_script CompText8746E38_unk176

	def_text_script CompText8746E38_unk177

	def_text_script CompText8746E38_unk178

	def_text_script CompText8746E38_unk179

	def_text_script CompText8746E38_unk180

	def_text_script CompText8746E38_unk181

	def_text_script CompText8746E38_unk182

	def_text_script CompText8746E38_unk183

	def_text_script CompText8746E38_unk184

	def_text_script CompText8746E38_unk185

	def_text_script CompText8746E38_unk186

	def_text_script CompText8746E38_unk187

	def_text_script CompText8746E38_unk188

	def_text_script CompText8746E38_unk189

	def_text_script CompText8746E38_unk190

	def_text_script CompText8746E38_unk191

	def_text_script CompText8746E38_unk192

	def_text_script CompText8746E38_unk193

	def_text_script CompText8746E38_unk194

	def_text_script CompText8746E38_unk195

	def_text_script CompText8746E38_unk196

	def_text_script CompText8746E38_unk197

	def_text_script CompText8746E38_unk198

	def_text_script CompText8746E38_unk199

	def_text_script CompText8746E38_unk200

	def_text_script CompText8746E38_unk201

	def_text_script CompText8746E38_unk202

	def_text_script CompText8746E38_unk203

	def_text_script CompText8746E38_unk204

	def_text_script CompText8746E38_unk205

	def_text_script CompText8746E38_unk206

	def_text_script CompText8746E38_unk207

	def_text_script CompText8746E38_unk208

	def_text_script CompText8746E38_unk209

	def_text_script CompText8746E38_unk210

	def_text_script CompText8746E38_unk211

	def_text_script CompText8746E38_unk212

	def_text_script CompText8746E38_unk213

	def_text_script CompText8746E38_unk214

	def_text_script CompText8746E38_unk215

	def_text_script CompText8746E38_unk216

	def_text_script CompText8746E38_unk217

	def_text_script CompText8746E38_unk218

	def_text_script CompText8746E38_unk219

	def_text_script CompText8746E38_unk220

	def_text_script CompText8746E38_unk221

	def_text_script CompText8746E38_unk222

	def_text_script CompText8746E38_unk223

	def_text_script CompText8746E38_unk224

	def_text_script CompText8746E38_unk225

	def_text_script CompText8746E38_unk226

	def_text_script CompText8746E38_unk227

	def_text_script CompText8746E38_unk228

	def_text_script CompText8746E38_unk229

	def_text_script CompText8746E38_unk230

	def_text_script CompText8746E38_unk231

	def_text_script CompText8746E38_unk232

	def_text_script CompText8746E38_unk233

	def_text_script CompText8746E38_unk234

	def_text_script CompText8746E38_unk235

	def_text_script CompText8746E38_unk236

	def_text_script CompText8746E38_unk237

	def_text_script CompText8746E38_unk238

	def_text_script CompText8746E38_unk239

	def_text_script CompText8746E38_unk240

	def_text_script CompText8746E38_unk241

	def_text_script CompText8746E38_unk242

	def_text_script CompText8746E38_unk243

	def_text_script CompText8746E38_unk244

	def_text_script CompText8746E38_unk245

	def_text_script CompText8746E38_unk246

	def_text_script CompText8746E38_unk247

	def_text_script CompText8746E38_unk248

	def_text_script CompText8746E38_unk249

	def_text_script CompText8746E38_unk250

	def_text_script CompText8746E38_unk251

	def_text_script CompText8746E38_unk252

	def_text_script CompText8746E38_unk253

	def_text_script CompText8746E38_unk254

	