	.set __dummy_symbol__, 0
	.set __struct_begin_label__, 0

	.macro struct_begin label=__dummy_symbol__
	.ifndef \label
\label::
	.endif
	.set __struct_begin_label__, .
	.endm

	.macro offset_struct_begin label=0
	.set __struct_begin_label__, 0
	.struct 0
	.endm

	.macro label_struct_entry label:req, size=0
\label::
	.if \size // suppress warning from size = 0
	.space \size
	.endif
	.endm

	.macro offset_struct_entry label:req, size=0
\label:
	.struct \label + \size
	.endm

	.macro def_struct_offsets macro:req, label:req
	\macro \label, offset_struct_entry, offset_struct_begin
	.endm

	.macro struct_org offset:req
	.space __struct_begin_label__ + \offset - .
	.endm

    // needed by struct data macros: u0, u8, u16, u32, ptr, custom types, etc
    .macro struct_init_defs, struct_entry:req, label:req
        .set __struct_label, \label
        .if \struct_entry == label_struct_entry
            .set __struct_entry, __LABEL_ENTRY
        .elseif \struct_entry == offset_struct_entry
            .set __struct_entry, __OFFSET_ENTRY
        .else
            .error "struct_init_defs: invalid struct_entry"
        .endif
    .endm

    .macro struct_const name:req, val:req
        .if __struct_entry ==__OFFSET_ENTRY
            .ifndef \name
                .equiv \name, \val
            .endif
        .endif
    .endm

    /* struct data macros */
    // use this macro to define additional types
    .macro struct_data_type label=__struct_label, field:req, size:req
        // run correct macro based on flag
        .if __struct_entry == __LABEL_ENTRY
            label_struct_entry \label\()_\field, \size
        .elseif __struct_entry == __OFFSET_ENTRY
            offset_struct_entry \label\()_\field, \size
        .else
            .error "struct_data_type: invalid __struct_entry"
        .endif
    .endm

    .macro u0 label=__struct_label, field:req
        struct_data_type \label, \field, 0
    .endm

    .macro u8 label=__struct_label, field:req
        struct_data_type \label, \field, 1
    .endm

    .macro u16 label=__struct_label, field:req
        struct_data_type \label, \field, 2
    .endm

    .macro u32 label=__struct_label, field:req
        struct_data_type \label, \field, 4
    .endm

    .macro ptr label=__struct_label, field:req
        struct_data_type \label, \field, 4
    .endm

    .macro u8_arr label=__struct_label, field:req, size:req
        struct_data_type \label, \field, \size
    .endm

    // for exclusively 0 or 1
    .macro bool label=__struct_label, field:req
        struct_data_type \label, \field, 1
    .endm

    // 0 or !0
    .macro bool8 label=__struct_label, field:req
        struct_data_type \label, \field, 1
    .endm

    /* unions types */
    /*
    always set to size type0
    defines a data type
    union<N-1> {
        type0 field0;
        type1 field1;
        ...
        typeN fieldN;
    }
    where all fields point to the same location, but field0 is the largest data type.
    OR
    union<N-1>_s {
        type0 field0;
        struct {
            type1 field1;
            ...
            typeN fieldN;
        }
    }
    where fields are at different locations, still within the field field0
    */
    // t: type, f:field. t0 must always be largest.
    .macro union3 label=__struct_label, t0:req, f0:req, t1:req, f1:req, t2:req, f2:req
        \t0 \label \f0
        u0 \label \f1
        u0 \label \f2
    .endm
    .macro union4 label=__struct_label, t0:req, f0:req, t1:req, f1:req, t2:req, f2:req, t3:req, f3:req
        \t0 \label \f0
        u0 \label \f1
        u0 \label \f2
        u0 \label \f3
    .endm
    .macro union5 label=__struct_label, t0:req, f0:req, t1:req, f1:req, t2:req, f2:req, t3:req, f3:req, t4:req, f4:req
        \t0 \label \f0
        u0 \label \f1
        u0 \label \f2
        u0 \label \f3
        u0 \label \f4
    .endm

    .macro union3_s label=__struct_label, t0:req, f0:req, t1:req, f1:req, t2:req, f2:req
        u0 \label \f0
        \t1 \label \f1
        \t2 \label \f2
    .endm
    .macro union4_s label=__struct_label, t0:req, f0:req, t1:req, f1:req, t2:req, f2:req, t3:req, f3:req
        u0 \label \f0
        \t1 \label \f1
        \t2 \label \f2
        \t3 \label \f3
    .endm
    .macro union5_s label=__struct_label, t0:req, f0:req, t1:req, f1:req, t2:req, f2:req, t3:req, f3:req, t4:req, f4:req
        u0 \label \f0
        \t1 \label \f1
        \t2 \label \f2
        \t3 \label \f3
        \t4 \label \f4
    .endm

    .macro ptr_debug, label=__struct_label, field:req
        .print "defining pointer"
        // just for debugging
        .if \label == oToolkit
            .print "oToolkit: \label"
        .elseif \label =s= eToolkit
            .print "eToolkit: \label"
        .else
            .error "invalid __struct_label"
        .endif
        // run correct macro based on flag
        .if __struct_entry == __LABEL_ENTRY
            .print "label_struct_entry"
            label_struct_entry \label\()_\field, 4
        .elseif __struct_entry == __OFFSET_ENTRY
            .print "offset_struct_entry"
            .print "\label"
            offset_struct_entry \label\()_\field, 4
        .else
            .error "invalid __struct_entry"
        .endif
    .endm


