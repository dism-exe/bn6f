// Bulk-decompile every public .text function in the current program
// into one .c file per symbol under $output_dir. Run via:
//   $GHIDRA/support/analyzeHeadless <PROJ> <NAME> \
//     -import bn6f_orig.elf -overwrite \
//     -scriptPath /home/alex/Code/bn/bn6f/tools/ghidra_scripts \
//     -postScript DecompAllToFiles.java <OUTPUT_DIR>
//
//@category bn6f

import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.decompiler.DecompileOptions;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionIterator;
import ghidra.program.model.symbol.SourceType;

import java.io.File;
import java.io.PrintWriter;

public class DecompAllToFiles extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 1) {
            println("usage: DecompAllToFiles <output_dir>");
            return;
        }
        File outDir = new File(args[0]);
        outDir.mkdirs();

        DecompInterface ifc = new DecompInterface();
        DecompileOptions opts = new DecompileOptions();
        ifc.setOptions(opts);
        ifc.openProgram(currentProgram);

        FunctionIterator it = currentProgram.getFunctionManager().getFunctions(true);
        int wrote = 0, failed = 0;
        for (Function fn : (Iterable<Function>) () -> it) {
            String name = fn.getName();
            // Skip thunks, deleted etc.
            if (fn.isThunk() || fn.isDeleted()) continue;
            // Skip functions outside .text
            if (!fn.getEntryPoint().getAddressSpace().getName().equals("ram")) continue;

            try {
                DecompileResults res = ifc.decompileFunction(fn, 30, monitor);
                if (res == null || !res.decompileCompleted()) {
                    failed++;
                    continue;
                }
                String code = res.getDecompiledFunction().getC();
                File outFile = new File(outDir, name + ".c");
                try (PrintWriter pw = new PrintWriter(outFile)) {
                    pw.println("// addr=" + fn.getEntryPoint() + " size=" + fn.getBody().getNumAddresses());
                    pw.print(code);
                }
                wrote++;
                if (wrote % 500 == 0) println("wrote " + wrote + " so far...");
            } catch (Exception e) {
                failed++;
            }
        }
        println("done: wrote=" + wrote + " failed=" + failed + " -> " + outDir);
        ifc.dispose();
    }
}
