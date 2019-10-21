import analyze_source
import analyzer


def main():
    start_time = time.time()
    try:
        analyze_source.read_source_and_syms()
        analyzer_start_time = time.time()
        analyzer.read_battle_object_jumptable()
    except:
        analyzer_end_time = time.time()
        for i in range(5):
            print('\a')
            time.sleep(0.4)
        print_post_output_info(start_time, analyzer_end_time)
        print("%s:%s: Error!" % (global_fileline.filename, global_fileline.line_num))
        global_fileline_error("Error!")

    analyzer_end_time = time.time()
    for i in range(5):
        print('\a')
        time.sleep(0.4)
    print_post_output_info(start_time, analyzer_start_time, analyzer_end_time)

def recursive_print_function_tree(f, function_tree, indentation_level=0):
    for function, subtree in function_tree.items():
        f.write((" " * indentation_level) + "- " + function + "\n")
        if subtree:
            recursive_print_function_tree(f, subtree, indentation_level + 2)

def print_post_output_info(start_time, analyzer_start_time, analyzer_end_time):
    analyzer_execution_time = analyzer_end_time - analyzer_start_time
    post_output = ""

    sorted_function_counts = sorted(analyzer.function_trackers.items(), key=lambda x: x[1].time, reverse=True)
    function_time_sum = 0
    for function_name_and_count in sorted_function_counts:
        function_tracker = function_name_and_count[1]
        post_output += "%s: time: %s, count: %s, avg: %s\n" % (function_name_and_count[0], function_tracker.time, function_tracker.count, function_tracker.time / function_tracker.count)
        function_time_sum += function_tracker.time

    #with open("trace_path.txt", "w+") as f:
    #    recursive_print_function_tree(f, analyzer.global_function_tree)

    # with open("function_tracker_output.pickle", "wb+") as f:
    #     pickle.dump(analyzer.function_trackers, f)

    if False:
        for filename, src_file in scanned_files.items():
            os.makedirs("temp/" + os.path.dirname(filename), exist_ok=True)
            with open("temp/" + filename, "w+") as f:
                f.writelines(line + "\n" for line in src_file.commented_lines)

    execution_time = time.time() - start_time
    post_output += "Full execution time: %s, Analyzer execution time: %s, Function time sum: %s, Full - Analyzer difference: %s, Full - Function difference: %s, Analyzer - Function difference: %s" % (execution_time, analyzer_execution_time, function_time_sum, execution_time - analyzer_execution_time, execution_time - function_time_sum, analyzer_execution_time - function_time_sum)
    debug_print(post_output)
    analyze_source.close_debug_file()

if __name__ == "__main__":
    main()