	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText87463F4::
	.word 0x26000

	text_archive_start

	def_text_script CompText87463F4_unk0
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
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87463F4_unk1

	def_text_script CompText87463F4_unk2

	def_text_script CompText87463F4_unk3

	def_text_script CompText87463F4_unk4

	def_text_script CompText87463F4_unk5
	ts_mugshot_show [
		mugshot: 0x0,
	]
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "BlastMan incident..."
	ts_key_wait [
		any: 0x0,
	]
	ts_end

	def_text_script CompText87463F4_unk6

	def_text_script CompText87463F4_unk7

	def_text_script CompText87463F4_unk8

	def_text_script CompText87463F4_unk9

	def_text_script CompText87463F4_unk10

	def_text_script CompText87463F4_unk11

	def_text_script CompText87463F4_unk12

	def_text_script CompText87463F4_unk13

	def_text_script CompText87463F4_unk14

	def_text_script CompText87463F4_unk15

	def_text_script CompText87463F4_unk16

	def_text_script CompText87463F4_unk17

	def_text_script CompText87463F4_unk18

	def_text_script CompText87463F4_unk19

	def_text_script CompText87463F4_unk20

	def_text_script CompText87463F4_unk21

	def_text_script CompText87463F4_unk22

	def_text_script CompText87463F4_unk23

	def_text_script CompText87463F4_unk24

	def_text_script CompText87463F4_unk25

	def_text_script CompText87463F4_unk26

	def_text_script CompText87463F4_unk27

	def_text_script CompText87463F4_unk28

	def_text_script CompText87463F4_unk29

	def_text_script CompText87463F4_unk30

	def_text_script CompText87463F4_unk31

	def_text_script CompText87463F4_unk32

	def_text_script CompText87463F4_unk33

	def_text_script CompText87463F4_unk34

	def_text_script CompText87463F4_unk35

	def_text_script CompText87463F4_unk36

	def_text_script CompText87463F4_unk37

	def_text_script CompText87463F4_unk38

	def_text_script CompText87463F4_unk39

	def_text_script CompText87463F4_unk40

	def_text_script CompText87463F4_unk41

	def_text_script CompText87463F4_unk42

	def_text_script CompText87463F4_unk43

	def_text_script CompText87463F4_unk44

	def_text_script CompText87463F4_unk45

	def_text_script CompText87463F4_unk46

	def_text_script CompText87463F4_unk47

	def_text_script CompText87463F4_unk48

	def_text_script CompText87463F4_unk49

	def_text_script CompText87463F4_unk50

	def_text_script CompText87463F4_unk51

	def_text_script CompText87463F4_unk52

	def_text_script CompText87463F4_unk53

	def_text_script CompText87463F4_unk54

	def_text_script CompText87463F4_unk55

	def_text_script CompText87463F4_unk56

	def_text_script CompText87463F4_unk57

	def_text_script CompText87463F4_unk58

	def_text_script CompText87463F4_unk59

	def_text_script CompText87463F4_unk60

	def_text_script CompText87463F4_unk61

	def_text_script CompText87463F4_unk62

	def_text_script CompText87463F4_unk63

	def_text_script CompText87463F4_unk64

	def_text_script CompText87463F4_unk65

	def_text_script CompText87463F4_unk66

	def_text_script CompText87463F4_unk67

	def_text_script CompText87463F4_unk68

	def_text_script CompText87463F4_unk69

	def_text_script CompText87463F4_unk70

	def_text_script CompText87463F4_unk71

	def_text_script CompText87463F4_unk72

	def_text_script CompText87463F4_unk73

	def_text_script CompText87463F4_unk74

	def_text_script CompText87463F4_unk75

	def_text_script CompText87463F4_unk76

	def_text_script CompText87463F4_unk77

	def_text_script CompText87463F4_unk78

	def_text_script CompText87463F4_unk79

	def_text_script CompText87463F4_unk80

	def_text_script CompText87463F4_unk81

	def_text_script CompText87463F4_unk82

	def_text_script CompText87463F4_unk83

	def_text_script CompText87463F4_unk84

	def_text_script CompText87463F4_unk85

	def_text_script CompText87463F4_unk86

	def_text_script CompText87463F4_unk87

	def_text_script CompText87463F4_unk88

	def_text_script CompText87463F4_unk89

	def_text_script CompText87463F4_unk90

	def_text_script CompText87463F4_unk91

	def_text_script CompText87463F4_unk92

	def_text_script CompText87463F4_unk93

	def_text_script CompText87463F4_unk94

	def_text_script CompText87463F4_unk95

	def_text_script CompText87463F4_unk96

	def_text_script CompText87463F4_unk97

	def_text_script CompText87463F4_unk98

	def_text_script CompText87463F4_unk99

	def_text_script CompText87463F4_unk100

	def_text_script CompText87463F4_unk101

	def_text_script CompText87463F4_unk102

	def_text_script CompText87463F4_unk103

	def_text_script CompText87463F4_unk104

	def_text_script CompText87463F4_unk105

	def_text_script CompText87463F4_unk106

	def_text_script CompText87463F4_unk107

	def_text_script CompText87463F4_unk108

	def_text_script CompText87463F4_unk109

	def_text_script CompText87463F4_unk110

	def_text_script CompText87463F4_unk111

	def_text_script CompText87463F4_unk112

	def_text_script CompText87463F4_unk113

	def_text_script CompText87463F4_unk114

	def_text_script CompText87463F4_unk115

	def_text_script CompText87463F4_unk116

	def_text_script CompText87463F4_unk117

	def_text_script CompText87463F4_unk118

	def_text_script CompText87463F4_unk119

	def_text_script CompText87463F4_unk120

	def_text_script CompText87463F4_unk121

	def_text_script CompText87463F4_unk122

	def_text_script CompText87463F4_unk123

	def_text_script CompText87463F4_unk124

	def_text_script CompText87463F4_unk125

	def_text_script CompText87463F4_unk126

	def_text_script CompText87463F4_unk127

	def_text_script CompText87463F4_unk128

	def_text_script CompText87463F4_unk129

	def_text_script CompText87463F4_unk130

	def_text_script CompText87463F4_unk131

	def_text_script CompText87463F4_unk132

	def_text_script CompText87463F4_unk133

	def_text_script CompText87463F4_unk134

	def_text_script CompText87463F4_unk135

	def_text_script CompText87463F4_unk136

	def_text_script CompText87463F4_unk137

	def_text_script CompText87463F4_unk138

	def_text_script CompText87463F4_unk139

	def_text_script CompText87463F4_unk140

	def_text_script CompText87463F4_unk141

	def_text_script CompText87463F4_unk142

	def_text_script CompText87463F4_unk143

	def_text_script CompText87463F4_unk144

	def_text_script CompText87463F4_unk145

	def_text_script CompText87463F4_unk146

	def_text_script CompText87463F4_unk147

	def_text_script CompText87463F4_unk148

	def_text_script CompText87463F4_unk149

	def_text_script CompText87463F4_unk150

	def_text_script CompText87463F4_unk151

	def_text_script CompText87463F4_unk152

	def_text_script CompText87463F4_unk153

	def_text_script CompText87463F4_unk154

	def_text_script CompText87463F4_unk155

	def_text_script CompText87463F4_unk156

	def_text_script CompText87463F4_unk157

	def_text_script CompText87463F4_unk158

	def_text_script CompText87463F4_unk159

	def_text_script CompText87463F4_unk160

	def_text_script CompText87463F4_unk161

	def_text_script CompText87463F4_unk162

	def_text_script CompText87463F4_unk163

	def_text_script CompText87463F4_unk164

	def_text_script CompText87463F4_unk165

	def_text_script CompText87463F4_unk166

	def_text_script CompText87463F4_unk167

	def_text_script CompText87463F4_unk168

	def_text_script CompText87463F4_unk169

	def_text_script CompText87463F4_unk170

	def_text_script CompText87463F4_unk171

	def_text_script CompText87463F4_unk172

	def_text_script CompText87463F4_unk173

	def_text_script CompText87463F4_unk174

	def_text_script CompText87463F4_unk175

	def_text_script CompText87463F4_unk176

	def_text_script CompText87463F4_unk177

	def_text_script CompText87463F4_unk178

	def_text_script CompText87463F4_unk179

	def_text_script CompText87463F4_unk180

	def_text_script CompText87463F4_unk181

	def_text_script CompText87463F4_unk182

	def_text_script CompText87463F4_unk183

	def_text_script CompText87463F4_unk184

	def_text_script CompText87463F4_unk185

	def_text_script CompText87463F4_unk186

	def_text_script CompText87463F4_unk187

	def_text_script CompText87463F4_unk188

	def_text_script CompText87463F4_unk189

	def_text_script CompText87463F4_unk190

	def_text_script CompText87463F4_unk191

	def_text_script CompText87463F4_unk192

	def_text_script CompText87463F4_unk193

	def_text_script CompText87463F4_unk194

	def_text_script CompText87463F4_unk195

	def_text_script CompText87463F4_unk196

	def_text_script CompText87463F4_unk197

	def_text_script CompText87463F4_unk198

	def_text_script CompText87463F4_unk199

	def_text_script CompText87463F4_unk200

	def_text_script CompText87463F4_unk201

	def_text_script CompText87463F4_unk202

	def_text_script CompText87463F4_unk203

	def_text_script CompText87463F4_unk204

	def_text_script CompText87463F4_unk205

	def_text_script CompText87463F4_unk206

	def_text_script CompText87463F4_unk207

	def_text_script CompText87463F4_unk208

	def_text_script CompText87463F4_unk209

	def_text_script CompText87463F4_unk210

	def_text_script CompText87463F4_unk211

	def_text_script CompText87463F4_unk212

	def_text_script CompText87463F4_unk213

	def_text_script CompText87463F4_unk214

	def_text_script CompText87463F4_unk215

	def_text_script CompText87463F4_unk216

	def_text_script CompText87463F4_unk217

	def_text_script CompText87463F4_unk218

	def_text_script CompText87463F4_unk219

	def_text_script CompText87463F4_unk220

	def_text_script CompText87463F4_unk221

	def_text_script CompText87463F4_unk222

	def_text_script CompText87463F4_unk223

	def_text_script CompText87463F4_unk224

	def_text_script CompText87463F4_unk225

	def_text_script CompText87463F4_unk226

	def_text_script CompText87463F4_unk227

	def_text_script CompText87463F4_unk228

	def_text_script CompText87463F4_unk229

	def_text_script CompText87463F4_unk230

	def_text_script CompText87463F4_unk231

	def_text_script CompText87463F4_unk232

	def_text_script CompText87463F4_unk233

	def_text_script CompText87463F4_unk234

	def_text_script CompText87463F4_unk235

	def_text_script CompText87463F4_unk236

	def_text_script CompText87463F4_unk237

	def_text_script CompText87463F4_unk238

	def_text_script CompText87463F4_unk239

	def_text_script CompText87463F4_unk240

	def_text_script CompText87463F4_unk241

	def_text_script CompText87463F4_unk242

	def_text_script CompText87463F4_unk243

	def_text_script CompText87463F4_unk244

	def_text_script CompText87463F4_unk245

	def_text_script CompText87463F4_unk246

	def_text_script CompText87463F4_unk247

	def_text_script CompText87463F4_unk248

	def_text_script CompText87463F4_unk249

	def_text_script CompText87463F4_unk250

	def_text_script CompText87463F4_unk251

	def_text_script CompText87463F4_unk252

	def_text_script CompText87463F4_unk253

	def_text_script CompText87463F4_unk254

	