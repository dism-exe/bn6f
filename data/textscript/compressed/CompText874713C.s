	.include "charmap.inc"
	.include "include/macros/enum.inc"
	.include "include/bytecode/text_script.inc"

	.data

CompText874713C::
	.word 0x29200

	text_archive_start

	def_text_script CompText874713C_unk0
	ts_check_chapter [
		lower: 0x50,
		upper: 0x53,
		jumpIfInRange: CompText874713C_unk5_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_check_chapter [
		lower: 0x43,
		upper: 0x46,
		jumpIfInRange: CompText874713C_unk15_id,
		jumpIfOutOfRange: TS_CONTINUE,
	]
	ts_msg_open
	.string "Dummy text"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874713C_unk1

	def_text_script CompText874713C_unk2

	def_text_script CompText874713C_unk3

	def_text_script CompText874713C_unk4

	def_text_script CompText874713C_unk5
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "Things don't look\n"
	.string "too damaged from the\n"
	.string "ElementMan incident."
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874713C_unk6

	def_text_script CompText874713C_unk7

	def_text_script CompText874713C_unk8

	def_text_script CompText874713C_unk9

	def_text_script CompText874713C_unk10

	def_text_script CompText874713C_unk11

	def_text_script CompText874713C_unk12

	def_text_script CompText874713C_unk13

	def_text_script CompText874713C_unk14

	def_text_script CompText874713C_unk15
	ts_check_flag [
		flag: 0xA2E,
		jumpIfTrue: CompText874713C_unk27_id,
		jumpIfFalse: TS_CONTINUE,
	]
	ts_end

	def_text_script CompText874713C_unk16

	def_text_script CompText874713C_unk17

	def_text_script CompText874713C_unk18

	def_text_script CompText874713C_unk19

	def_text_script CompText874713C_unk20

	def_text_script CompText874713C_unk21

	def_text_script CompText874713C_unk22

	def_text_script CompText874713C_unk23

	def_text_script CompText874713C_unk24

	def_text_script CompText874713C_unk25

	def_text_script CompText874713C_unk26

	def_text_script CompText874713C_unk27
	ts_mugshot_show mugshot=0x0
	ts_msg_open
	.string "We've gotta fix\n"
	.string "Mr.Weather,MegaMan!"
	ts_key_wait any=0x0
	ts_end

	def_text_script CompText874713C_unk28

	def_text_script CompText874713C_unk29

	def_text_script CompText874713C_unk30

	def_text_script CompText874713C_unk31

	def_text_script CompText874713C_unk32

	def_text_script CompText874713C_unk33

	def_text_script CompText874713C_unk34

	def_text_script CompText874713C_unk35

	def_text_script CompText874713C_unk36

	def_text_script CompText874713C_unk37

	def_text_script CompText874713C_unk38

	def_text_script CompText874713C_unk39

	def_text_script CompText874713C_unk40

	def_text_script CompText874713C_unk41

	def_text_script CompText874713C_unk42

	def_text_script CompText874713C_unk43

	def_text_script CompText874713C_unk44

	def_text_script CompText874713C_unk45

	def_text_script CompText874713C_unk46

	def_text_script CompText874713C_unk47

	def_text_script CompText874713C_unk48

	def_text_script CompText874713C_unk49

	def_text_script CompText874713C_unk50

	def_text_script CompText874713C_unk51

	def_text_script CompText874713C_unk52

	def_text_script CompText874713C_unk53

	def_text_script CompText874713C_unk54

	def_text_script CompText874713C_unk55

	def_text_script CompText874713C_unk56

	def_text_script CompText874713C_unk57

	def_text_script CompText874713C_unk58

	def_text_script CompText874713C_unk59

	def_text_script CompText874713C_unk60

	def_text_script CompText874713C_unk61

	def_text_script CompText874713C_unk62

	def_text_script CompText874713C_unk63

	def_text_script CompText874713C_unk64

	def_text_script CompText874713C_unk65

	def_text_script CompText874713C_unk66

	def_text_script CompText874713C_unk67

	def_text_script CompText874713C_unk68

	def_text_script CompText874713C_unk69

	def_text_script CompText874713C_unk70

	def_text_script CompText874713C_unk71

	def_text_script CompText874713C_unk72

	def_text_script CompText874713C_unk73

	def_text_script CompText874713C_unk74

	def_text_script CompText874713C_unk75

	def_text_script CompText874713C_unk76

	def_text_script CompText874713C_unk77

	def_text_script CompText874713C_unk78

	def_text_script CompText874713C_unk79

	def_text_script CompText874713C_unk80

	def_text_script CompText874713C_unk81

	def_text_script CompText874713C_unk82

	def_text_script CompText874713C_unk83

	def_text_script CompText874713C_unk84

	def_text_script CompText874713C_unk85

	def_text_script CompText874713C_unk86

	def_text_script CompText874713C_unk87

	def_text_script CompText874713C_unk88

	def_text_script CompText874713C_unk89

	def_text_script CompText874713C_unk90

	def_text_script CompText874713C_unk91

	def_text_script CompText874713C_unk92

	def_text_script CompText874713C_unk93

	def_text_script CompText874713C_unk94

	def_text_script CompText874713C_unk95

	def_text_script CompText874713C_unk96

	def_text_script CompText874713C_unk97

	def_text_script CompText874713C_unk98

	def_text_script CompText874713C_unk99

	def_text_script CompText874713C_unk100

	def_text_script CompText874713C_unk101

	def_text_script CompText874713C_unk102

	def_text_script CompText874713C_unk103

	def_text_script CompText874713C_unk104

	def_text_script CompText874713C_unk105

	def_text_script CompText874713C_unk106

	def_text_script CompText874713C_unk107

	def_text_script CompText874713C_unk108

	def_text_script CompText874713C_unk109

	def_text_script CompText874713C_unk110

	def_text_script CompText874713C_unk111

	def_text_script CompText874713C_unk112

	def_text_script CompText874713C_unk113

	def_text_script CompText874713C_unk114

	def_text_script CompText874713C_unk115

	def_text_script CompText874713C_unk116

	def_text_script CompText874713C_unk117

	def_text_script CompText874713C_unk118

	def_text_script CompText874713C_unk119

	def_text_script CompText874713C_unk120

	def_text_script CompText874713C_unk121

	def_text_script CompText874713C_unk122

	def_text_script CompText874713C_unk123

	def_text_script CompText874713C_unk124

	def_text_script CompText874713C_unk125

	def_text_script CompText874713C_unk126

	def_text_script CompText874713C_unk127

	def_text_script CompText874713C_unk128

	def_text_script CompText874713C_unk129

	def_text_script CompText874713C_unk130

	def_text_script CompText874713C_unk131

	def_text_script CompText874713C_unk132

	def_text_script CompText874713C_unk133

	def_text_script CompText874713C_unk134

	def_text_script CompText874713C_unk135

	def_text_script CompText874713C_unk136

	def_text_script CompText874713C_unk137

	def_text_script CompText874713C_unk138

	def_text_script CompText874713C_unk139

	def_text_script CompText874713C_unk140

	def_text_script CompText874713C_unk141

	def_text_script CompText874713C_unk142

	def_text_script CompText874713C_unk143

	def_text_script CompText874713C_unk144

	def_text_script CompText874713C_unk145

	def_text_script CompText874713C_unk146

	def_text_script CompText874713C_unk147

	def_text_script CompText874713C_unk148

	def_text_script CompText874713C_unk149

	def_text_script CompText874713C_unk150

	def_text_script CompText874713C_unk151

	def_text_script CompText874713C_unk152

	def_text_script CompText874713C_unk153

	def_text_script CompText874713C_unk154

	def_text_script CompText874713C_unk155

	def_text_script CompText874713C_unk156

	def_text_script CompText874713C_unk157

	def_text_script CompText874713C_unk158

	def_text_script CompText874713C_unk159

	def_text_script CompText874713C_unk160

	def_text_script CompText874713C_unk161

	def_text_script CompText874713C_unk162

	def_text_script CompText874713C_unk163

	def_text_script CompText874713C_unk164

	def_text_script CompText874713C_unk165

	def_text_script CompText874713C_unk166

	def_text_script CompText874713C_unk167

	def_text_script CompText874713C_unk168

	def_text_script CompText874713C_unk169

	def_text_script CompText874713C_unk170

	def_text_script CompText874713C_unk171

	def_text_script CompText874713C_unk172

	def_text_script CompText874713C_unk173

	def_text_script CompText874713C_unk174

	def_text_script CompText874713C_unk175

	def_text_script CompText874713C_unk176

	def_text_script CompText874713C_unk177

	def_text_script CompText874713C_unk178

	def_text_script CompText874713C_unk179

	def_text_script CompText874713C_unk180

	def_text_script CompText874713C_unk181

	def_text_script CompText874713C_unk182

	def_text_script CompText874713C_unk183

	def_text_script CompText874713C_unk184

	def_text_script CompText874713C_unk185

	def_text_script CompText874713C_unk186

	def_text_script CompText874713C_unk187

	def_text_script CompText874713C_unk188

	def_text_script CompText874713C_unk189

	def_text_script CompText874713C_unk190

	def_text_script CompText874713C_unk191

	def_text_script CompText874713C_unk192

	def_text_script CompText874713C_unk193

	def_text_script CompText874713C_unk194

	def_text_script CompText874713C_unk195

	def_text_script CompText874713C_unk196

	def_text_script CompText874713C_unk197

	def_text_script CompText874713C_unk198

	def_text_script CompText874713C_unk199

	def_text_script CompText874713C_unk200

	def_text_script CompText874713C_unk201

	def_text_script CompText874713C_unk202

	def_text_script CompText874713C_unk203

	def_text_script CompText874713C_unk204

	def_text_script CompText874713C_unk205

	def_text_script CompText874713C_unk206

	def_text_script CompText874713C_unk207

	def_text_script CompText874713C_unk208

	def_text_script CompText874713C_unk209

	def_text_script CompText874713C_unk210

	def_text_script CompText874713C_unk211

	def_text_script CompText874713C_unk212

	def_text_script CompText874713C_unk213

	def_text_script CompText874713C_unk214

	def_text_script CompText874713C_unk215

	def_text_script CompText874713C_unk216

	def_text_script CompText874713C_unk217

	def_text_script CompText874713C_unk218

	def_text_script CompText874713C_unk219

	def_text_script CompText874713C_unk220

	def_text_script CompText874713C_unk221

	def_text_script CompText874713C_unk222

	def_text_script CompText874713C_unk223

	def_text_script CompText874713C_unk224

	def_text_script CompText874713C_unk225

	def_text_script CompText874713C_unk226

	def_text_script CompText874713C_unk227

	def_text_script CompText874713C_unk228

	def_text_script CompText874713C_unk229

	def_text_script CompText874713C_unk230

	def_text_script CompText874713C_unk231

	def_text_script CompText874713C_unk232

	def_text_script CompText874713C_unk233

	def_text_script CompText874713C_unk234

	def_text_script CompText874713C_unk235

	def_text_script CompText874713C_unk236

	def_text_script CompText874713C_unk237

	def_text_script CompText874713C_unk238

	def_text_script CompText874713C_unk239

	def_text_script CompText874713C_unk240

	def_text_script CompText874713C_unk241

	def_text_script CompText874713C_unk242

	def_text_script CompText874713C_unk243

	def_text_script CompText874713C_unk244

	def_text_script CompText874713C_unk245

	def_text_script CompText874713C_unk246

	def_text_script CompText874713C_unk247

	def_text_script CompText874713C_unk248

	def_text_script CompText874713C_unk249

	def_text_script CompText874713C_unk250

	def_text_script CompText874713C_unk251

	def_text_script CompText874713C_unk252

	def_text_script CompText874713C_unk253

	def_text_script CompText874713C_unk254

	